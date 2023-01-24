.class public Lcom/zui/gallery/filtershow/editors/EditorCrop;
.super Lcom/zui/gallery/filtershow/editors/Editor;
.source "EditorCrop.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/editors/EditorInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;
    }
.end annotation


# static fields
.field public static final ID:I = 0x7f080173

.field public static final TAG:Ljava/lang/String;

.field protected static final sAspects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cropImage:Landroid/widget/ImageView;

.field private mAspectString:Ljava/lang/String;

.field protected mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

.field private rotateImage:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 46
    const-class v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->sAspects:Landroid/util/SparseArray;

    .line 68
    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;

    const v2, 0x7f100058

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;-><init>(III)V

    const v2, 0x7f080114

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->sAspects:Landroid/util/SparseArray;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;

    const v2, 0x7f100057

    invoke-direct {v1, v2, v3, v3}, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;-><init>(III)V

    const v2, 0x7f080113

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->sAspects:Landroid/util/SparseArray;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;

    const v2, 0x7f100051

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;-><init>(III)V

    const v2, 0x7f08010d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->sAspects:Landroid/util/SparseArray;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;

    const v2, 0x7f100053

    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;-><init>(III)V

    const v2, 0x7f08010f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->sAspects:Landroid/util/SparseArray;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;

    const v2, 0x7f100050

    const/16 v5, 0x10

    const/16 v6, 0x9

    invoke-direct {v1, v2, v5, v6}, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;-><init>(III)V

    const v2, 0x7f08010c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->sAspects:Landroid/util/SparseArray;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;

    const v2, 0x7f100052

    invoke-direct {v1, v2, v4, v3}, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;-><init>(III)V

    const v2, 0x7f08010e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->sAspects:Landroid/util/SparseArray;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;

    const v2, 0x7f100056

    invoke-direct {v1, v2, v6, v5}, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;-><init>(III)V

    const v2, 0x7f080112

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f080173

    .line 84
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/editors/Editor;-><init>(I)V

    const-string v0, ""

    .line 81
    iput-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mAspectString:Ljava/lang/String;

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mChangesGeometry:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/editors/EditorCrop;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->cropImageSelected()V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/editors/EditorCrop;IZ)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->selection(IZ)V

    return-void
.end method

.method private cropImageSelected()V
    .locals 3

    const/4 v0, 0x1

    .line 200
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isCropSelected:Z

    const v1, 0x7f08010a

    .line 201
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->selection(IZ)V

    .line 203
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryPanel;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/category/CategoryPanel;-><init>()V

    .line 204
    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/category/CategoryPanel;->setAdapter(I)V

    .line 205
    iget-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setCategoryFragment(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V

    .line 208
    sget v1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mGeometryAppliedFiltersCount:I

    add-int/2addr v1, v0

    sput v1, Lcom/zui/gallery/filtershow/editors/EditorPanel;->mGeometryAppliedFiltersCount:I

    return-void
.end method

.method private selection(IZ)V
    .locals 1

    const v0, 0x7f08010a

    if-eq p1, v0, :cond_1

    const v0, 0x7f0802d3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->cropImage:Landroid/widget/ImageView;

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 223
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->rotateImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->cropImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 218
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->rotateImage:Landroid/widget/ImageView;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method private setAspectString(Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mAspectString:Ljava/lang/String;

    return-void
.end method

.method private showPopupMenu(Landroid/widget/LinearLayout;)V
    .locals 3

    const v0, 0x7f080060

    .line 249
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 250
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->getActivity()Lcom/zui/gallery/filtershow/FilterShowActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 251
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {p1, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 252
    new-instance p1, Lcom/zui/gallery/filtershow/editors/EditorCrop$3;

    invoke-direct {p1, p0}, Lcom/zui/gallery/filtershow/editors/EditorCrop$3;-><init>(Lcom/zui/gallery/filtershow/editors/EditorCrop;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 259
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 260
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->onShowMenu(Landroid/widget/PopupMenu;)V

    return-void
.end method


# virtual methods
.method public changeCropAspect(I)V
    .locals 3

    .line 231
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->sAspects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;

    if-eqz v0, :cond_2

    const v1, 0x7f080114

    if-ne p1, v1, :cond_0

    .line 236
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->applyOriginalAspect()V

    goto :goto_0

    :cond_0
    const v1, 0x7f080113

    if-ne p1, v1, :cond_1

    .line 238
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->applyFreeAspect()V

    goto :goto_0

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->applyOriginalAspect()V

    .line 241
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    iget v1, v0, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;->mAspectX:I

    int-to-float v1, v1

    iget v0, v0, Lcom/zui/gallery/filtershow/editors/EditorCrop$AspectInfo;->mAspectY:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->applyAspect(FF)V

    :goto_0
    return-void

    .line 233
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid resource ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/Editor;->createEditor(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    .line 91
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    if-nez p2, :cond_0

    .line 92
    new-instance p2, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    invoke-direct {p2, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    .line 94
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iput-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mView:Landroid/view/View;

    .line 95
    iget-object p2, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    invoke-virtual {p2, p0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->setEditor(Lcom/zui/gallery/filtershow/editors/EditorCrop;)V

    .line 97
    iput-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mContext:Landroid/content/Context;

    return-void
.end method

.method public exeCR()V
    .locals 0

    .line 296
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->cropImageSelected()V

    return-void
.end method

.method public exeRO()V
    .locals 0

    .line 300
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->cropImageSelected()V

    return-void
.end method

.method public finalApplyCalled()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->getFinalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->commitLocalRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public getCropType()I
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->getCropType()I

    move-result v0

    return v0
.end method

.method public getOverlayId()I
    .locals 1

    const v0, 0x7f07015b

    return v0
.end method

.method public getOverlayOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTextId()I
    .locals 1

    const v0, 0x7f1000a5

    return v0
.end method

.method public openUtilityPanel(Landroid/widget/LinearLayout;)V
    .locals 3

    const v0, 0x7f080109

    .line 163
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0802d2

    .line 164
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08010a

    .line 165
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->cropImage:Landroid/widget/ImageView;

    const v2, 0x7f0802d3

    .line 166
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->rotateImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    .line 167
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->cropImageSelected()V

    .line 174
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->cropImage:Landroid/widget/ImageView;

    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorCrop$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/editors/EditorCrop$1;-><init>(Lcom/zui/gallery/filtershow/editors/EditorCrop;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object p1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->rotateImage:Landroid/widget/ImageView;

    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorCrop$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/editors/EditorCrop$2;-><init>(Lcom/zui/gallery/filtershow/editors/EditorCrop;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public reSetSaveRectF(Landroid/graphics/RectF;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->setSaveRectf(Landroid/graphics/RectF;)V

    return-void
.end method

.method public reflectCurrentFilter()V
    .locals 9

    const-string v0, "fixtest"

    const-string v1, "reflectCurrentFilter: xxx"

    .line 102
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOOKID"

    const-string v1, "reflectCurrentFilter: "

    .line 103
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v2

    const-string v3, "CROP"

    .line 106
    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilterWithSerializationName(Ljava/lang/String;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 107
    invoke-super {p0}, Lcom/zui/gallery/filtershow/editors/Editor;->reflectCurrentFilter()V

    .line 108
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    instance-of v2, v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    sget-object v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not reflect current filter, not of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    .line 141
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 111
    :cond_1
    :goto_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    iget-object v5, v2, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->geometryHolder:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 112
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    iget-object v4, v2, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->filterCropRepresentation:Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    .line 113
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    iget-object v7, v2, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mCropObj:Lcom/zui/gallery/filtershow/crop/CropObject;

    .line 114
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    iget-object v8, v2, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mImageBounds:Landroid/graphics/RectF;

    .line 115
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    iget-object v6, v2, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->mGeometry:Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lookFIlter"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    if-nez v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->setFilterCropRepresentation(Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;)V

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 131
    iget-object v3, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    invoke-virtual/range {v3 .. v8}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->setFilterCropRepresentation2(Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Lcom/zui/gallery/filtershow/imageshow/GeometryMathUtils$GeometryHolder;Lcom/zui/gallery/filtershow/crop/CropObject;Landroid/graphics/RectF;)V

    goto :goto_1

    .line 133
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->setFilterCropRepresentation(Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;)V

    :goto_1
    const v0, 0x7f080113

    .line 137
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->changeCropAspect(I)V

    .line 144
    :goto_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->invalidate()V

    return-void
.end method

.method public resaveParamter(Z)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->saveParamter(Z)V

    return-void
.end method

.method public setCropType(I)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/zui/gallery/filtershow/editors/EditorCrop;->mImageCrop:Lcom/zui/gallery/filtershow/imageshow/ImageCrop;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/ImageCrop;->setCropType(I)V

    return-void
.end method

.method public setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 266
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/filtershow/editors/Editor;->setUtilityPanelUI(Landroid/view/View;Landroid/view/View;)V

    const/4 p1, 0x1

    .line 267
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->setMenuIcon(Z)V

    return-void
.end method

.method public showsSeekBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
