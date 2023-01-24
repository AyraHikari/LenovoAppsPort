.class Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$1;
.super Ljava/lang/Object;
.source "VrWidgetRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->postApiRequestToGlThread(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

.field final synthetic val$apiRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$apiRequest"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$1;->this$0:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$1;->val$apiRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$1;->this$0:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$1;->val$apiRequest:Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer;->executeApiRequestOnGlThread(Lcom/google/vr/sdk/widgets/common/VrWidgetRenderer$ApiRequest;)V

    return-void
.end method
