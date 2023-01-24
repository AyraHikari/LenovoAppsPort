.class Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;
.super Ljava/lang/Object;
.source "ImageCurves.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->openUtilityPanel(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    const-string p1, "curves"

    const-string v0, "onMenuItemClick: 2222"

    .line 171
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mRgbButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->access$002(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;I)I

    goto :goto_0

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mRedButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->access$002(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;I)I

    goto :goto_0

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mGreenButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 177
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->access$002(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;I)I

    goto :goto_0

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->mBlueButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_3

    .line 179
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->access$002(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;I)I

    .line 181
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->access$000(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;)I

    move-result p1

    sput p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->curvesIndex:I

    .line 182
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->access$100(Lcom/zui/gallery/filtershow/imageshow/ImageCurves;)Lcom/zui/gallery/filtershow/editors/EditorCurves;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorCurves;->commitLocalRepresentation()V

    .line 183
    iget-object p1, p0, Lcom/zui/gallery/filtershow/imageshow/ImageCurves$2;->this$0:Lcom/zui/gallery/filtershow/imageshow/ImageCurves;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCurves;->invalidate()V

    return-void
.end method
