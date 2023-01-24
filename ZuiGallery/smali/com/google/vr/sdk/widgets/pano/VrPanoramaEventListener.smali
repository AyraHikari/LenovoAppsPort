.class public Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;
.super Lcom/google/vr/sdk/widgets/common/VrEventListener;
.source "VrPanoramaEventListener.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field public static volatile isLoadSuccessful:Z = false


# instance fields
.field private final uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/common/VrEventListener;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method private onLoadErrorJni(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "errorMessage"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".onError "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener$2;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener$2;-><init>(Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onLoadSuccessJni()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener$1;

    invoke-direct {v1, p0}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener$1;-><init>(Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
