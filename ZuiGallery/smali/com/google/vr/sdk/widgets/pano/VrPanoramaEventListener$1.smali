.class Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener$1;
.super Ljava/lang/Object;
.source "VrPanoramaEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;->onLoadSuccessJni()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener$1;->this$0:Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener$1;->this$0:Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;->onLoadSuccess()V

    const/4 v0, 0x1

    .line 36
    sput-boolean v0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;->isLoadSuccessful:Z

    return-void
.end method
