.class Lcom/zui/gallery/filtershow/controller/SliderHue$1;
.super Ljava/lang/Object;
.source "SliderHue.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/controller/SliderHue;->setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/SliderHue;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/SliderHue;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderHue$1;->this$0:Lcom/zui/gallery/filtershow/controller/SliderHue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addColorListener(Lcom/zui/gallery/filtershow/colorpicker/ColorListener;)V
    .locals 0

    return-void
.end method

.method public setColor([F)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SliderHue$1;->this$0:Lcom/zui/gallery/filtershow/controller/SliderHue;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/controller/SliderHue;->access$000(Lcom/zui/gallery/filtershow/controller/SliderHue;)Lcom/zui/gallery/filtershow/controller/ParameterHue;

    move-result-object v0

    const/4 v1, 0x3

    aget p1, p1, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/controller/ParameterHue;->setValue(I)V

    .line 53
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderHue$1;->this$0:Lcom/zui/gallery/filtershow/controller/SliderHue;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/SliderHue;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    return-void
.end method
