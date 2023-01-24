.class public Lcom/zui/gallery/filtershow/info/InfoPanel;
.super Landroidx/fragment/app/DialogFragment;
.source "InfoPanel.java"


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "InfoPanel"

.field private static final LOGTAG:Ljava/lang/String; = "InfoPanel"


# instance fields
.field private mExifData:Landroid/widget/TextView;

.field private mImageName:Landroid/widget/TextView;

.field private mImageSize:Landroid/widget/TextView;

.field private mImageThumbnail:Landroid/widget/ImageView;

.field private mMainView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private createStringFromIfFound(Lcom/zui/gallery/exif/ExifTag;II)Ljava/lang/String;
    .locals 2

    .line 52
    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->getTagId()S

    move-result v0

    .line 53
    invoke-static {p2}, Lcom/zui/gallery/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p2

    const-string v1, ""

    if-ne v0, p2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/info/InfoPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<b>"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": </b>"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 56
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<br>"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 65
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/info/InfoPanel;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/info/InfoPanel;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    const p2, 0x7f0b005c

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mMainView:Landroid/widget/LinearLayout;

    const p2, 0x7f0801ec

    .line 72
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mImageThumbnail:Landroid/widget/ImageView;

    .line 73
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 74
    iget-object p2, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mImageThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    iget-object p2, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f0801e8

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mImageName:Landroid/widget/TextView;

    .line 77
    iget-object p2, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f0801eb

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mImageSize:Landroid/widget/TextView;

    .line 78
    iget-object p2, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f080196

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mExifData:Landroid/widget/TextView;

    .line 79
    iget-object p2, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mMainView:Landroid/widget/LinearLayout;

    const v2, 0x7f080197

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 81
    iget-object v2, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mMainView:Landroid/widget/LinearLayout;

    const v3, 0x7f0801d9

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/info/HistogramView;

    .line 82
    invoke-virtual {v2, p1}, Lcom/zui/gallery/filtershow/info/HistogramView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 85
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/info/InfoPanel;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/zui/gallery/filtershow/cache/ImageLoader;->getLocalPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 88
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 92
    iget-object p1, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mImageName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_2
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mImageSize:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getEXIF()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/exif/ExifTag;

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/zui/gallery/exif/ExifInterface;->TAG_MODEL:I

    const v4, 0x7f100137

    invoke-direct {p0, v0, v3, v4}, Lcom/zui/gallery/filtershow/info/InfoPanel;->createStringFromIfFound(Lcom/zui/gallery/exif/ExifTag;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    const v4, 0x7f100130

    invoke-direct {p0, v0, v2, v4}, Lcom/zui/gallery/filtershow/info/InfoPanel;->createStringFromIfFound(Lcom/zui/gallery/exif/ExifTag;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    const v4, 0x7f100135

    invoke-direct {p0, v0, v2, v4}, Lcom/zui/gallery/filtershow/info/InfoPanel;->createStringFromIfFound(Lcom/zui/gallery/exif/ExifTag;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const v4, 0x7f100136

    invoke-direct {p0, v0, v2, v4}, Lcom/zui/gallery/filtershow/info/InfoPanel;->createStringFromIfFound(Lcom/zui/gallery/exif/ExifTag;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const v4, 0x7f100138

    invoke-direct {p0, v0, v2, v4}, Lcom/zui/gallery/filtershow/info/InfoPanel;->createStringFromIfFound(Lcom/zui/gallery/exif/ExifTag;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const v4, 0x7f100132

    invoke-direct {p0, v0, v2, v4}, Lcom/zui/gallery/filtershow/info/InfoPanel;->createStringFromIfFound(Lcom/zui/gallery/exif/ExifTag;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_F_NUMBER:I

    const v4, 0x7f100134

    invoke-direct {p0, v0, v2, v4}, Lcom/zui/gallery/filtershow/info/InfoPanel;->createStringFromIfFound(Lcom/zui/gallery/exif/ExifTag;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    const v4, 0x7f100133

    invoke-direct {p0, v0, v2, v4}, Lcom/zui/gallery/filtershow/info/InfoPanel;->createStringFromIfFound(Lcom/zui/gallery/exif/ExifTag;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/exif/ExifInterface;->TAG_COPYRIGHT:I

    const v4, 0x7f100131

    invoke-direct {p0, v0, v2, v4}, Lcom/zui/gallery/filtershow/info/InfoPanel;->createStringFromIfFound(Lcom/zui/gallery/exif/ExifTag;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v0, p3

    goto/16 :goto_0

    :cond_3
    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mExifData:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const/16 p1, 0x8

    .line 136
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :goto_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/info/InfoPanel;->mMainView:Landroid/widget/LinearLayout;

    return-object p1
.end method
