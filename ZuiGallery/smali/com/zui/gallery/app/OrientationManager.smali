.class public Lcom/zui/gallery/app/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Lcom/zui/gallery/ui/OrientationSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;
    }
.end annotation


# static fields
.field private static final AUTO_ROATE_OFF:I = 0x0

.field private static final AUTO_ROATE_ON:I = 0x1

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0xb4

.field public static final ORIENTATION_270:I = 0x10e

.field public static final ORIENTATION_90:I = 0x5a

.field private static final ORIENTATION_HYSTERESIS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "OrientationManager"


# instance fields
.field private final ORIENTATION_UNKNOWN:I

.field private final ROTATION_ALWAYS:Z

.field private disableListener:Z

.field private lastTime:J

.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mOrientationHistory:I

.field private mOrientationListener:Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;

.field private mOrientationLocked:Z


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/zui/gallery/app/OrientationManager;->mOrientationLocked:Z

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Lcom/zui/gallery/app/OrientationManager;->ORIENTATION_UNKNOWN:I

    .line 49
    iput v1, p0, Lcom/zui/gallery/app/OrientationManager;->mOrientationHistory:I

    const-wide/16 v1, 0x0

    .line 51
    iput-wide v1, p0, Lcom/zui/gallery/app/OrientationManager;->lastTime:J

    .line 90
    iput-boolean v0, p0, Lcom/zui/gallery/app/OrientationManager;->disableListener:Z

    .line 74
    iput-object p1, p0, Lcom/zui/gallery/app/OrientationManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 75
    new-instance v0, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;

    invoke-direct {v0, p0, p1}, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;-><init>(Lcom/zui/gallery/app/OrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/app/OrientationManager;->mOrientationListener:Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;

    .line 76
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f040007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/app/OrientationManager;->ROTATION_ALWAYS:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/OrientationManager;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/zui/gallery/app/OrientationManager;->ROTATION_ALWAYS:Z

    return p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/OrientationManager;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/zui/gallery/app/OrientationManager;->lastTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/zui/gallery/app/OrientationManager;J)J
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/zui/gallery/app/OrientationManager;->lastTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/OrientationManager;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/zui/gallery/app/OrientationManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/OrientationManager;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/zui/gallery/app/OrientationManager;->mOrientationHistory:I

    return p0
.end method

.method static synthetic access$302(Lcom/zui/gallery/app/OrientationManager;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/zui/gallery/app/OrientationManager;->mOrientationHistory:I

    return p1
.end method

.method static synthetic access$400(II)I
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/zui/gallery/app/OrientationManager;->roundOrientation(II)I

    move-result p0

    return p0
.end method

.method private calculateCurrentScreenOrientation()I
    .locals 6

    .line 132
    invoke-virtual {p0}, Lcom/zui/gallery/app/OrientationManager;->getDisplayRotation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xb4

    if-ge v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 135
    :goto_0
    iget-object v4, p0, Lcom/zui/gallery/app/OrientationManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    return v1

    :cond_2
    const/16 v1, 0x5a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_4

    :cond_3
    xor-int/lit8 v3, v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/16 v2, 0x9

    :goto_2
    return v2
.end method

.method private static getDisplayRotation(Landroid/app/Activity;)I
    .locals 1

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 237
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0
.end method

.method private static roundOrientation(II)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, p0, p1

    .line 225
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    .line 226
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    add-int/lit8 p0, p0, 0x2d

    .line 230
    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    return p0

    :cond_2
    return p1
.end method


# virtual methods
.method public disable(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/zui/gallery/app/OrientationManager;->disableListener:Z

    return-void
.end method

.method public getCompensation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/zui/gallery/app/OrientationManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/OrientationManager;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method public lockOrientation()V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lcom/zui/gallery/app/OrientationManager;->mOrientationLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/zui/gallery/app/OrientationManager;->mOrientationLocked:Z

    .line 114
    sget-boolean v0, Lcom/zui/gallery/common/ApiHelper;->HAS_ORIENTATION_LOCK:Z

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/zui/gallery/app/OrientationManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/OrientationManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {p0}, Lcom/zui/gallery/app/OrientationManager;->calculateCurrentScreenOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/zui/gallery/app/OrientationManager;->disableListener:Z

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/zui/gallery/app/OrientationManager;->mOrientationListener:Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 80
    iget-boolean v0, p0, Lcom/zui/gallery/app/OrientationManager;->disableListener:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/zui/gallery/app/OrientationManager;->mOrientationListener:Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/zui/gallery/app/OrientationManager$MyOrientationEventListener;->enable()V

    .line 83
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/app/OrientationManager;->lastTime:J

    return-void
.end method

.method public unlockOrientation()V
    .locals 2

    .line 124
    iget-boolean v0, p0, Lcom/zui/gallery/app/OrientationManager;->mOrientationLocked:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/zui/gallery/app/OrientationManager;->mOrientationLocked:Z

    const-string v0, "OrientationManager"

    const-string/jumbo v1, "unlock orientation"

    .line 127
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/zui/gallery/app/OrientationManager;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    return-void
.end method
