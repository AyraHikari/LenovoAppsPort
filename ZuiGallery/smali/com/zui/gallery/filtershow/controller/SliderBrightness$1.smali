.class Lcom/zui/gallery/filtershow/controller/SliderBrightness$1;
.super Ljava/lang/Object;
.source "SliderBrightness.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/controller/SliderBrightness;->setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/SliderBrightness;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/SliderBrightness;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderBrightness$1;->this$0:Lcom/zui/gallery/filtershow/controller/SliderBrightness;

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
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SliderBrightness$1;->this$0:Lcom/zui/gallery/filtershow/controller/SliderBrightness;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/controller/SliderBrightness;->access$000(Lcom/zui/gallery/filtershow/controller/SliderBrightness;)Lcom/zui/gallery/filtershow/controller/ParameterBrightness;

    move-result-object v0

    const/4 v1, 0x3

    aget p1, p1, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/controller/ParameterBrightness;->setValue(I)V

    .line 53
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderBrightness$1;->this$0:Lcom/zui/gallery/filtershow/controller/SliderBrightness;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/SliderBrightness;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    return-void
.end method
