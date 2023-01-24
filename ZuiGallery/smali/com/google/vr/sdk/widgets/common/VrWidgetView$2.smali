.class Lcom/google/vr/sdk/widgets/common/VrWidgetView$2;
.super Ljava/lang/Object;
.source "VrWidgetView.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/common/TouchTracker$TouchEnabledVrView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateTouchTracker()V
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

    .line 286
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView$2;->this$0:Lcom/google/vr/sdk/widgets/common/VrWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventListener()Lcom/google/vr/sdk/widgets/common/VrEventListener;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView$2;->this$0:Lcom/google/vr/sdk/widgets/common/VrWidgetView;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->access$100(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Lcom/google/vr/sdk/widgets/common/VrEventListener;

    move-result-object v0

    return-object v0
.end method

.method public onPanningEvent(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deltaPixelX",
            "deltaPixelY"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView$2;->this$0:Lcom/google/vr/sdk/widgets/common/VrWidgetView;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->access$000(Lcom/google/vr/sdk/widgets/common/VrWidgetView;)Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->onPanningEvent(FF)V

    return-void
.end method
