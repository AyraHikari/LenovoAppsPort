.class Lcom/google/vr/sdk/widgets/common/VrWidgetView$8;
.super Ljava/lang/Object;
.source "VrWidgetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/common/VrWidgetView;->updateButtonVisibility()V
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

    .line 531
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView$8;->this$0:Lcom/google/vr/sdk/widgets/common/VrWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView$8;->this$0:Lcom/google/vr/sdk/widgets/common/VrWidgetView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->setDisplayMode(I)V

    return-void
.end method
