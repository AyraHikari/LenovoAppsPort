.class Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$1;
.super Ljava/lang/Object;
.source "SizeChooserMosaic.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/controller/DrawSeekBarImage$SeekbarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->setUp(Landroid/view/ViewGroup;Lcom/zui/gallery/filtershow/controller/Parameter;Lcom/zui/gallery/filtershow/editors/Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

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

    .line 77
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->access$100(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->access$000(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;)Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;->getMinimum()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->access$000(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;)Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;->getMinimum()I

    move-result v0

    add-int/2addr p1, v0

    sput p1, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mIndex:I

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RestoreScreenChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "moc"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    check-cast p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorDraw;->mImageDraw:Lcom/zui/gallery/filtershow/imageshow/ImageDraw;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/imageshow/ImageDraw;->mToOrig:Landroid/graphics/Matrix;

    sget v0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mIndex:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    float-to-int p1, p1

    .line 82
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    sget v1, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mIndex:I

    iput v1, v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radKey:I

    .line 83
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    iput p1, v0, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->radValue:I

    .line 85
    iget-object v0, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->access$000(Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;)Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zui/gallery/filtershow/controller/ParameterIntegerMosaic;->setValue(I)V

    .line 87
    iget-object p1, p0, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic$1;->this$0:Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/controller/SizeChooserMosaic;->mEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->commitLocalRepresentation()V

    return-void
.end method
