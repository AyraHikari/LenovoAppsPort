.class public Lcom/zui/gallery/filtershow/ui/ExportDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "ExportDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/ui/ExportDialog$Watcher;
    }
.end annotation


# instance fields
.field mCompressedBounds:Landroid/graphics/Rect;

.field mCompressedSize:I

.field mEditing:Z

.field mEstimatedSize:Landroid/widget/TextView;

.field mExportCompressionMargin:F

.field mExportHeight:I

.field mExportWidth:I

.field mHandler:Landroid/os/Handler;

.field mHeightText:Landroid/widget/EditText;

.field mOriginalBounds:Landroid/graphics/Rect;

.field mQuality:I

.field mRatio:F

.field mSeekBar:Landroid/widget/SeekBar;

.field mSeekVal:Landroid/widget/TextView;

.field mSliderLabel:Ljava/lang/String;

.field mUpdateDelay:I

.field mUpdateRunnable:Ljava/lang/Runnable;

.field mWidthText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/16 v0, 0x5f

    .line 52
    iput v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mQuality:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mExportWidth:I

    .line 54
    iput v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mExportHeight:I

    const v1, 0x3f8ccccd    # 1.1f

    .line 58
    iput v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mExportCompressionMargin:F

    .line 61
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mEditing:Z

    const/16 v0, 0x3e8

    .line 63
    iput v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mUpdateDelay:I

    .line 64
    new-instance v0, Lcom/zui/gallery/filtershow/ui/ExportDialog$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/ui/ExportDialog$1;-><init>(Lcom/zui/gallery/filtershow/ui/ExportDialog;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/ui/ExportDialog;Landroid/widget/EditText;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/ui/ExportDialog;->textChanged(Landroid/widget/EditText;)V

    return-void
.end method

.method private scheduleUpdateCompressionFactor()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 148
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mUpdateRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mUpdateDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private textChanged(Landroid/widget/EditText;)V
    .locals 5

    .line 201
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mEditing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mEditing:Z

    .line 207
    invoke-virtual {p1}, Landroid/widget/EditText;->getId()I

    move-result v1

    const v2, 0x7f08016e

    const-string v3, ""

    if-ne v1, v2, :cond_4

    .line 208
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mWidthText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 209
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mWidthText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 212
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 213
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 214
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mWidthText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-gtz p1, :cond_2

    .line 217
    iget p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mRatio:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 218
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mWidthText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    int-to-float v0, p1

    .line 220
    iget v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    move p1, v0

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mHeightText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v4, v0

    move v0, p1

    move p1, v4

    goto/16 :goto_3

    .line 224
    :cond_4
    invoke-virtual {p1}, Landroid/widget/EditText;->getId()I

    move-result p1

    const v1, 0x7f08016d

    if-ne p1, v1, :cond_8

    .line 225
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mHeightText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 226
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mHeightText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 229
    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le p1, v1, :cond_5

    .line 230
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 231
    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mHeightText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    if-gtz p1, :cond_6

    .line 235
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mHeightText:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    move v0, p1

    :goto_1
    int-to-float p1, v0

    .line 237
    iget v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mRatio:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    move v4, v0

    move v0, p1

    move p1, v4

    goto :goto_2

    :cond_7
    move p1, v0

    .line 239
    :goto_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mWidthText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    move p1, v0

    .line 242
    :goto_3
    iput v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mExportWidth:I

    .line 243
    iput p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mExportHeight:I

    .line 244
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/ExportDialog;->updateSize()V

    const/4 p1, 0x0

    .line 245
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mEditing:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0800c3

    if-eq p1, v0, :cond_1

    const v0, 0x7f080143

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/ExportDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 159
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 160
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSelectedImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    .line 161
    iget v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mExportWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 163
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSelectedImageUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mSeekBar:Landroid/widget/SeekBar;

    .line 164
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    const/4 v8, 0x0

    move-object v0, p1

    .line 162
    invoke-static/range {v0 .. v8}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getSaveIntent(Landroid/content/Context;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;ZIFZ)Landroid/content/Intent;

    move-result-object v0

    .line 165
    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 166
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/ExportDialog;->dismiss()V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/ExportDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 95
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/ExportDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mHandler:Landroid/os/Handler;

    const p3, 0x7f0b0057

    .line 97
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0802bd

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mSeekBar:Landroid/widget/SeekBar;

    const p2, 0x7f0802be

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mSeekVal:Landroid/widget/TextView;

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p3, 0x7f100203

    invoke-virtual {p0, p3}, Lcom/zui/gallery/filtershow/ui/ExportDialog;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mSliderLabel:Ljava/lang/String;

    .line 101
    iget-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mSeekBar:Landroid/widget/SeekBar;

    iget p3, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mQuality:I

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 102
    iget-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mSeekVal:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mSliderLabel:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f08016e

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mWidthText:Landroid/widget/EditText;

    const p2, 0x7f08016d

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mHeightText:Landroid/widget/EditText;

    const p2, 0x7f080195

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mEstimatedSize:Landroid/widget/TextView;

    .line 108
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mOriginalBounds:Landroid/graphics/Rect;

    .line 109
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object p2

    .line 110
    iget-object p3, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mOriginalBounds:Landroid/graphics/Rect;

    .line 111
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 110
    invoke-virtual {p2, p3, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->finalGeometryRect(II)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mOriginalBounds:Landroid/graphics/Rect;

    .line 112
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    iput p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mRatio:F

    .line 113
    iget-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mWidthText:Landroid/widget/EditText;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mHeightText:Landroid/widget/EditText;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mExportWidth:I

    .line 116
    iget-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mExportHeight:I

    .line 117
    iget-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mWidthText:Landroid/widget/EditText;

    new-instance p3, Lcom/zui/gallery/filtershow/ui/ExportDialog$Watcher;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mWidthText:Landroid/widget/EditText;

    invoke-direct {p3, p0, v0}, Lcom/zui/gallery/filtershow/ui/ExportDialog$Watcher;-><init>(Lcom/zui/gallery/filtershow/ui/ExportDialog;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    iget-object p2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mHeightText:Landroid/widget/EditText;

    new-instance p3, Lcom/zui/gallery/filtershow/ui/ExportDialog$Watcher;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mHeightText:Landroid/widget/EditText;

    invoke-direct {p3, p0, v0}, Lcom/zui/gallery/filtershow/ui/ExportDialog$Watcher;-><init>(Lcom/zui/gallery/filtershow/ui/ExportDialog;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f0800c3

    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f080143

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/ExportDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const p3, 0x7f10010f

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setTitle(I)V

    .line 124
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/ExportDialog;->updateCompressionFactor()V

    .line 125
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/ui/ExportDialog;->updateSize()V

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mSeekVal:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mSliderLabel:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mQuality:I

    .line 143
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/ui/ExportDialog;->scheduleUpdateCompressionFactor()V

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

.method public updateCompressionFactor()V
    .locals 4

    .line 172
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mQuality:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 178
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mCompressedSize:I

    .line 179
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mCompressedBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public updateSize()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mCompressedBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mCompressedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    .line 190
    iget v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mExportWidth:I

    iget v2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mExportHeight:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    .line 191
    iget v2, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mCompressedSize:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    div-float/2addr v1, v0

    .line 193
    iget v0, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mExportCompressionMargin:F

    mul-float/2addr v1, v0

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr v1, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Mb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/zui/gallery/filtershow/ui/ExportDialog;->mEstimatedSize:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
