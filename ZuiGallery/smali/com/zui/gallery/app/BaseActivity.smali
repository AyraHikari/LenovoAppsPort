.class public Lcom/zui/gallery/app/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private mScreenBrightnessObserver:Landroid/database/ContentObserver;

.field private mUserSetBrightnessObserver:Landroid/database/ContentObserver;

.field private needHightBright:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    new-instance v0, Lcom/zui/gallery/app/BaseActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/BaseActivity$1;-><init>(Lcom/zui/gallery/app/BaseActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/gallery/app/BaseActivity;->mScreenBrightnessObserver:Landroid/database/ContentObserver;

    .line 77
    new-instance v0, Lcom/zui/gallery/app/BaseActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/BaseActivity$2;-><init>(Lcom/zui/gallery/app/BaseActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/gallery/app/BaseActivity;->mUserSetBrightnessObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method protected highLightScreenBrightness()V
    .locals 4

    const-string v0, "BaseActivity"

    const-string v1, "highLightScreenBrightness:"

    .line 89
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/zui/gallery/app/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/util/BrightnessTools;->getScreenBrightness(Landroid/content/ContentResolver;)I

    move-result v1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "highLightScreenBrightness : curBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, v1

    const/high16 v1, 0x43800000    # 256.0f

    div-float/2addr v0, v1

    const v2, -0x40d9999a    # -0.65f

    mul-float/2addr v2, v0

    mul-float/2addr v2, v0

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    const v0, 0x3eb33333    # 0.35f

    add-float/2addr v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 94
    invoke-static {p0, v0}, Lcom/zui/gallery/util/BrightnessTools;->setBrightness(Landroid/app/Activity;I)V

    return-void
.end method

.method public isNeedHightBright()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/zui/gallery/app/BaseActivity;->needHightBright:Z

    return v0
.end method

.method protected onPause()V
    .locals 3

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/BaseActivity;->mUserSetBrightnessObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/zui/gallery/util/BrightnessTools;->unregisterBrightnessObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 53
    invoke-virtual {p0}, Lcom/zui/gallery/app/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/BaseActivity;->mScreenBrightnessObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/zui/gallery/util/BrightnessTools;->unregisterBrightnessObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in unregisterBrightnessObserver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryAppImpl;->isNeedDismissKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/zui/gallery/app/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 61
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 39
    iget-boolean v0, p0, Lcom/zui/gallery/app/BaseActivity;->needHightBright:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/zui/gallery/app/BaseActivity;->highLightScreenBrightness()V

    .line 41
    invoke-virtual {p0}, Lcom/zui/gallery/app/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/BaseActivity;->mUserSetBrightnessObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/zui/gallery/util/BrightnessTools;->registerUserSetBrightnessObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 43
    invoke-virtual {p0}, Lcom/zui/gallery/app/BaseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/BaseActivity;->mScreenBrightnessObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/zui/gallery/util/BrightnessTools;->registerScreenBrightnessObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public setEnableBrightness(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/zui/gallery/app/BaseActivity;->needHightBright:Z

    return-void
.end method
