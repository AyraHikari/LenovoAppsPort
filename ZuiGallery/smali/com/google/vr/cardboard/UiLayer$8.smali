.class Lcom/google/vr/cardboard/UiLayer$8;
.super Ljava/lang/Object;
.source "UiLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/cardboard/UiLayer;->setAlignmentMarkerScale(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/cardboard/UiLayer;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/google/vr/cardboard/UiLayer;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$scale"
        }
    .end annotation

    .line 330
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    iput p2, p0, Lcom/google/vr/cardboard/UiLayer$8;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    .line 334
    invoke-static {v0}, Lcom/google/vr/cardboard/UiLayer;->access$900(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 335
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->access$000(Lcom/google/vr/cardboard/UiLayer;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/google/vr/cardboard/UiLayer$8;->val$scale:F

    invoke-static {v1, v2, v0}, Lcom/google/vr/cardboard/UiLayer;->scaleAlignmentMarkerLayoutParams(Landroid/content/Context;FLandroid/widget/RelativeLayout$LayoutParams;)V

    .line 336
    iget-object v1, p0, Lcom/google/vr/cardboard/UiLayer$8;->this$0:Lcom/google/vr/cardboard/UiLayer;

    invoke-static {v1}, Lcom/google/vr/cardboard/UiLayer;->access$900(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
