.class Lcom/google/vr/sdk/widgets/common/VrWidgetView$5;
.super Ljava/lang/Object;
.source "VrWidgetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/common/VrWidgetView;->initializeUiButtons()V
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

    .line 350
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView$5;->this$0:Lcom/google/vr/sdk/widgets/common/VrWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 353
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/common/VrWidgetView$5;->this$0:Lcom/google/vr/sdk/widgets/common/VrWidgetView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/common/VrWidgetView;->setDisplayMode(I)V

    return-void
.end method
