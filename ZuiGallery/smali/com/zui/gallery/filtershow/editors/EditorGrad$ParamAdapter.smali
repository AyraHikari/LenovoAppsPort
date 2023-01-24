.class Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;
.super Ljava/lang/Object;
.source "EditorGrad.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/editors/EditorGrad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParamAdapter"
.end annotation


# instance fields
.field mMax:I

.field mMin:I

.field mMode:I

.field mSlider:Landroid/widget/SeekBar;

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/editors/EditorGrad;IILandroid/widget/LinearLayout;I)V
    .locals 1

    .line 192
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x64

    .line 188
    iput v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mMin:I

    const/16 v0, 0x64

    .line 189
    iput v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mMax:I

    .line 193
    invoke-virtual {p4, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mSlider:Landroid/widget/SeekBar;

    .line 194
    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mTextView:Landroid/widget/TextView;

    .line 195
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mSlider:Landroid/widget/SeekBar;

    iget p3, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mMax:I

    iget p4, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mMin:I

    sub-int/2addr p3, p4

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 196
    iput p5, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mMode:I

    .line 197
    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->access$100(Lcom/zui/gallery/filtershow/editors/EditorGrad;)Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->updateValues(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private getModeNameid(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, 0x7f100106

    return p1

    :cond_1
    const p1, 0x7f100108

    return p1

    :cond_2
    const p1, 0x7f100105

    return p1
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 212
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->access$100(Lcom/zui/gallery/filtershow/editors/EditorGrad;)Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;

    move-result-object p1

    .line 213
    iget p3, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mMin:I

    add-int/2addr p2, p3

    .line 214
    iget p3, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mMode:I

    invoke-virtual {p1, p3, p2}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->setParameter(II)V

    .line 215
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->access$200(Lcom/zui/gallery/filtershow/editors/EditorGrad;)I

    move-result p1

    iget p3, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mMode:I

    if-eq p1, p3, :cond_0

    .line 216
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-static {p1, p3}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->access$202(Lcom/zui/gallery/filtershow/editors/EditorGrad;I)I

    .line 217
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    iget-object p3, p1, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mMode:I

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->getModeNameid(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mEffectName:Ljava/lang/String;

    .line 218
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    iget-object p3, p1, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mEffectName:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mEffectName:Ljava/lang/String;

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mTextView:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    iget-object p1, p1, Lcom/zui/gallery/filtershow/editors/EditorGrad;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 222
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->this$0:Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;->commitLocalRepresentation()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public updateValues(Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;)V
    .locals 2

    .line 205
    iget v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mMode:I

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/filters/FilterGradRepresentation;->getParameter(I)I

    move-result p1

    .line 206
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mSlider:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/zui/gallery/filtershow/editors/EditorGrad$ParamAdapter;->mMin:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
