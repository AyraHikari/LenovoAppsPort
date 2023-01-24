.class Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;
.super Ljava/lang/Object;
.source "SizeChooserDraw.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchDown()V
    .locals 0

    return-void
.end method

.method public onValueChanged(I)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->access$100(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->access$000(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;->getMinimum()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValueChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "valueXXX"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->access$000(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;->getMinimum()I

    move-result v0

    add-int/2addr p1, v0

    sput p1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mIndex:I

    .line 106
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    check-cast p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mImageDraw:Lcom/zui/gallery/filtershow/imageshow/ImageDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mToOrig:Landroid/graphics/Matrix;

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    check-cast p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mImageDraw:Lcom/zui/gallery/filtershow/imageshow/ImageDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mToOrig:Landroid/graphics/Matrix;

    sget v0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mIndex:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    float-to-int p1, p1

    .line 108
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    sget v1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mIndex:I

    iput v1, v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radKey:I

    .line 109
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    iput p1, v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radValue:I

    .line 111
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->access$000(Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;)Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/filtershow/controller/ParameterIntegerDraw;->setValue(I)V

    .line 113
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/SizeChooserDraw;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    :cond_0
    return-void
.end method
