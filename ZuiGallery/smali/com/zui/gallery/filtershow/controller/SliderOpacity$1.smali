.class Lcom/zui/gallery/filtershow/controller/SliderOpacity$1;
.super Ljava/lang/Object;
.source "SliderOpacity.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/colorpicker/ColorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/controller/SliderOpacity;->setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/SliderOpacity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/SliderOpacity;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderOpacity$1;->this$0:Lcom/zui/gallery/filtershow/controller/SliderOpacity;

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

    .line 53
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SliderOpacity$1;->this$0:Lcom/zui/gallery/filtershow/controller/SliderOpacity;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->access$000(Lcom/zui/gallery/filtershow/controller/SliderOpacity;)Lcom/zui/gallery/filtershow/controller/ParameterOpacity;

    move-result-object v0

    const/4 v1, 0x3

    aget p1, p1, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/controller/ParameterOpacity;->setValue(I)V

    .line 54
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SliderOpacity$1;->this$0:Lcom/zui/gallery/filtershow/controller/SliderOpacity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/controller/SliderOpacity;->access$100(Lcom/zui/gallery/filtershow/controller/SliderOpacity;)Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    return-void
.end method
