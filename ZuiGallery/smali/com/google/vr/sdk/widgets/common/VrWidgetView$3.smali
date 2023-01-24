.class Lcom/google/vr/sdk/widgets/common/VrWidgetView$3;
.super Ljava/lang/Object;
.source "VrWidgetView.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$GLThreadScheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/common/VrWidgetView;->initializeRenderingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/widgets/common/VrWidgetView;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView$3;->this$0:Lcom/google/vr/sdk/widgets/common/VrWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueGlThreadEvent(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView$3;->this$0:Lcom/google/vr/sdk/widgets/common/VrWidgetView;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->access$200(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method
