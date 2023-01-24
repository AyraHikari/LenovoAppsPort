.class public Lcom/zui/gallery/ui/DetailsHelper;
.super Ljava/lang/Object;
.source "DetailsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/DetailsHelper$ResolutionResolvingListener;,
        Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;,
        Lcom/zui/gallery/ui/DetailsHelper$CloseListener;,
        Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;
    }
.end annotation


# static fields
.field private static sAddressResolver:Lcom/zui/gallery/ui/DetailsAddressResolver;


# instance fields
.field private mContainer:Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/zui/gallery/ui/DialogDetailsView;

    invoke-direct {v0, p1, p2}, Lcom/zui/gallery/ui/DialogDetailsView;-><init>(Landroid/app/Activity;Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/DetailsHelper;->mContainer:Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/GLView;Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance p2, Lcom/zui/gallery/ui/DialogDetailsView;

    invoke-direct {p2, p1, p3}, Lcom/zui/gallery/ui/DialogDetailsView;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;)V

    iput-object p2, p0, Lcom/zui/gallery/ui/DetailsHelper;->mContainer:Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;

    return-void
.end method

.method public static getDetailsName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x6b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown key"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const p1, 0x7f10004a

    .line 171
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f1002d7

    .line 175
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f10014c

    .line 173
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f100149

    .line 169
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f1001ac

    .line 167
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f1001a1

    .line 165
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    const p1, 0x7f100120

    .line 163
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const p1, 0x7f1001a8

    .line 161
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const p1, 0x7f1000f8

    .line 159
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    const p1, 0x7f1001c9

    .line 157
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    const p1, 0x7f10016e

    .line 155
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    const p1, 0x7f1002df

    .line 153
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    const p1, 0x7f10019e

    .line 149
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d
    const p1, 0x7f100287

    .line 147
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_e
    const p1, 0x7f1000d5

    .line 145
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f
    const p1, 0x7f100290

    .line 143
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f1001d1

    .line 151
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f100187

    .line 179
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f100112

    .line 177
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static pause()V
    .locals 1

    .line 123
    sget-object v0, Lcom/zui/gallery/ui/DetailsHelper;->sAddressResolver:Lcom/zui/gallery/ui/DetailsAddressResolver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/DetailsAddressResolver;->cancel()V

    :cond_0
    return-void
.end method

.method public static resolveAddress(Landroid/app/Activity;[DLcom/zui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lcom/zui/gallery/ui/DetailsHelper;->sAddressResolver:Lcom/zui/gallery/ui/DetailsAddressResolver;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/zui/gallery/ui/DetailsAddressResolver;

    invoke-direct {v0, p0}, Lcom/zui/gallery/ui/DetailsAddressResolver;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/zui/gallery/ui/DetailsHelper;->sAddressResolver:Lcom/zui/gallery/ui/DetailsAddressResolver;

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/ui/DetailsAddressResolver;->cancel()V

    .line 96
    :goto_0
    sget-object p0, Lcom/zui/gallery/ui/DetailsHelper;->sAddressResolver:Lcom/zui/gallery/ui/DetailsAddressResolver;

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/ui/DetailsAddressResolver;->resolveAddress([DLcom/zui/gallery/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resolveResolution(Ljava/lang/String;Lcom/zui/gallery/ui/DetailsHelper$ResolutionResolvingListener;)V
    .locals 3

    .line 102
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 103
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 105
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :try_start_1
    invoke-static {v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 107
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-interface {p1, p0, v0}, Lcom/zui/gallery/ui/DetailsHelper$ResolutionResolvingListener;->onResolutionAvailable(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 109
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 113
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 118
    :catch_3
    :cond_1
    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/zui/gallery/ui/DetailsHelper;->mContainer:Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;->close()V

    return-void
.end method

.method public hide()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/zui/gallery/ui/DetailsHelper;->mContainer:Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;->hide()V

    return-void
.end method

.method public layout(IIII)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/zui/gallery/ui/DetailsHelper;->mContainer:Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;

    instance-of p3, p1, Lcom/zui/gallery/ui/GLView;

    if-eqz p3, :cond_0

    .line 70
    check-cast p1, Lcom/zui/gallery/ui/GLView;

    sub-int/2addr p4, p2

    const/high16 p3, -0x80000000

    .line 72
    invoke-static {p4, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    .line 71
    invoke-virtual {p1, p3, p4}, Lcom/zui/gallery/ui/GLView;->measure(II)V

    const/4 p3, 0x0

    .line 73
    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, p3, p2, p4, v0}, Lcom/zui/gallery/ui/GLView;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public reloadDetails()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/ui/DetailsHelper;->mContainer:Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;->reloadDetails()V

    return-void
.end method

.method public reloadPrivacyDetails(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/zui/gallery/ui/DetailsHelper;->mContainer:Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;->reloadPrivacyDetails(Ljava/lang/String;)V

    return-void
.end method

.method public setCloseListener(Lcom/zui/gallery/ui/DetailsHelper$CloseListener;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/zui/gallery/ui/DetailsHelper;->mContainer:Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;->setCloseListener(Lcom/zui/gallery/ui/DetailsHelper$CloseListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/zui/gallery/ui/DetailsHelper;->mContainer:Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0}, Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;->show()V

    return-void
.end method

.method public showForPrivacy(Ljava/lang/String;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/zui/gallery/ui/DetailsHelper;->mContainer:Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/DetailsHelper$DetailsViewContainer;->showForPrivacy(Ljava/lang/String;)V

    return-void
.end method
