.class public Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;
.super Lcom/google/vr/sdk/widgets/common/VrWidgetView;
.source "VrPanoramaView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private eventListener:Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;

.field private renderer:Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance p1, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->eventListener:Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance p1, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->eventListener:Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createRenderer(Landroid/content/Context;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;FF)Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "context",
            "glThreadScheduler",
            "xMetersPerPixel",
            "yMetersPerPixel"
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->createRenderer(Landroid/content/Context;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;FF)Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;

    move-result-object p1

    return-object p1
.end method

.method protected createRenderer(Landroid/content/Context;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;FF)Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "glThreadScheduler",
            "xMetersPerPixel",
            "yMetersPerPixel"
        }
    .end annotation

    .line 101
    new-instance p1, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2, p3, p4}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;FF)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->renderer:Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;

    return-object p1
.end method

.method public loadImageFromBitmap(Landroid/graphics/Bitmap;Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "options"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 122
    new-instance p2, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

    invoke-direct {p2}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;-><init>()V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;->validate()V

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->renderer:Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->eventListener:Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->loadImageFromBitmap(Landroid/graphics/Bitmap;Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V

    return-void
.end method

.method public loadImageFromByteArray([BLcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jpegImageData",
            "options"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 152
    new-instance p2, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;

    invoke-direct {p2}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;-><init>()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;->validate()V

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->renderer:Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->eventListener:Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaRenderer;->loadImageFromByteArray([BLcom/google/vr/sdk/widgets/pano/VrPanoramaView$Options;Lcom/google/vr/sdk/widgets/common/VrEventListener;)V

    return-void
.end method

.method public setEventListener(Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventListener"
        }
    .end annotation

    .line 167
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->setEventListener(Lcom/google/vr/sdk/widgets/common/VrEventListener;)V

    .line 168
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaView;->eventListener:Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;

    return-void
.end method
