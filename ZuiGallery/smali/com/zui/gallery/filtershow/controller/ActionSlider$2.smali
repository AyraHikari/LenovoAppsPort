.class Lcom/zui/gallery/filtershow/controller/ActionSlider$2;
.super Ljava/lang/Object;
.source "ActionSlider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/controller/ActionSlider;->setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/ActionSlider;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/ActionSlider;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/ActionSlider$2;->this$0:Lcom/zui/gallery/filtershow/controller/ActionSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/ActionSlider$2;->this$0:Lcom/zui/gallery/filtershow/controller/ActionSlider;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/ActionSlider;->mParameter:Lcom/zui/gallery/filtershow/controller/ParameterInteger;

    check-cast p1, Lcom/zui/gallery/filtershow/controller/ParameterActionAndInt;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/controller/ParameterActionAndInt;->fireRightAction()V

    return-void
.end method
