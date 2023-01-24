.class public Lcom/zui/gallery/app/Wallpaper;
.super Landroid/app/Activity;
.source "Wallpaper.java"


# static fields
.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/*"

.field private static final KEY_PICKED_ITEM:Ljava/lang/String; = "picked-item"

.field private static final KEY_STATE:Ljava/lang/String; = "activity-state"

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_PHOTO_PICKED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Wallpaper"


# instance fields
.field private mPickedItem:Landroid/net/Uri;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/zui/gallery/app/Wallpaper;->mState:I

    return-void
.end method

.method private getDefaultDisplaySize(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/zui/gallery/app/Wallpaper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 76
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 197
    invoke-virtual {p0, p2}, Lcom/zui/gallery/app/Wallpaper;->setResult(I)V

    .line 198
    invoke-virtual {p0}, Lcom/zui/gallery/app/Wallpaper;->finish()V

    return-void

    .line 201
    :cond_0
    iput p1, p0, Lcom/zui/gallery/app/Wallpaper;->mState:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 203
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Wallpaper"

    const-string v1, "Wallpaper onCreate "

    .line 56
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v1, "activity-state"

    .line 58
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/app/Wallpaper;->mState:I

    const-string v1, "picked-item"

    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/zui/gallery/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wallpaper mState =  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/app/Wallpaper;->mState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPickedItem = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/zui/gallery/app/Wallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    iget v1, p0, Lcom/zui/gallery/app/Wallpaper;->mState:I

    const-string v2, "image/*"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_2

    goto/16 :goto_1

    .line 91
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/zui/gallery/app/GalleryActivity;

    .line 96
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0, v3}, Lcom/zui/gallery/app/Wallpaper;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 103
    :cond_1
    iput v3, p0, Lcom/zui/gallery/app/Wallpaper;->mState:I

    .line 107
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/zui/gallery/app/Wallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.zui.wallpapercropper"

    invoke-static {v1, v4}, Lcom/zui/gallery/util/GalleryUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0x13

    const-string v5, "Wallpaper"

    if-eqz v1, :cond_5

    const-string/jumbo v1, "wallpapercropper isPackageExist "

    .line 109
    invoke-static {v5, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_7

    .line 115
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "zui.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v0

    .line 120
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 121
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x40

    .line 122
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 123
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/Wallpaper;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/zui/gallery/app/Wallpaper;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "start set wallpaper exception "

    .line 128
    invoke-static {v5, v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v0, "wallpapercropper not  Exist "

    .line 136
    invoke-static {v5, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_6

    .line 140
    invoke-virtual {p0}, Lcom/zui/gallery/app/Wallpaper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 142
    :try_start_1
    iget-object v1, p0, Lcom/zui/gallery/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/Wallpaper;->startActivity(Landroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/zui/gallery/app/Wallpaper;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 153
    :catch_1
    :cond_6
    invoke-virtual {p0}, Lcom/zui/gallery/app/Wallpaper;->getWallpaperDesiredMinimumWidth()I

    move-result v0

    .line 154
    invoke-virtual {p0}, Lcom/zui/gallery/app/Wallpaper;->getWallpaperDesiredMinimumHeight()I

    move-result v1

    .line 155
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0, v4}, Lcom/zui/gallery/app/Wallpaper;->getDefaultDisplaySize(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 156
    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 157
    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    int-to-float v6, v1

    div-float/2addr v4, v6

    .line 158
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.camera.action.CROP"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v7, Lcom/zui/gallery/filtershow/crop/CropActivity;

    .line 159
    invoke-virtual {v6, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, p0, Lcom/zui/gallery/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    .line 160
    invoke-virtual {v6, v7, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v6, 0x2000000

    .line 161
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v6, "outputX"

    .line 162
    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v6, "outputY"

    .line 163
    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v6, "aspectX"

    .line 164
    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "aspectY"

    .line 165
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "spotlightX"

    .line 166
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "spotlightY"

    .line 167
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scale"

    .line 168
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scaleUpIfNeeded"

    .line 169
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "set-as-wallpaper"

    .line 170
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 171
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/Wallpaper;->startActivity(Landroid/content/Intent;)V

    .line 172
    invoke-virtual {p0}, Lcom/zui/gallery/app/Wallpaper;->finish()V

    :catch_2
    :cond_7
    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 66
    iget v0, p0, Lcom/zui/gallery/app/Wallpaper;->mState:I

    const-string v1, "activity-state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lcom/zui/gallery/app/Wallpaper;->mPickedItem:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const-string v1, "picked-item"

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
