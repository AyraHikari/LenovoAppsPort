.class public abstract Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;
.super Ljava/lang/Object;
.source "BaseFiltersManager.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/filters/FiltersManagerInterface;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "BaseFiltersManager"

.field private static mImageBorderSize:I = 0x4


# instance fields
.field protected mBorders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field protected mCaptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field protected mCropFilter:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

.field protected mDelicacyLooks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field protected mEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field protected mFilters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Lcom/zui/gallery/filtershow/filters/ImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected mLooks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field protected mMovieLooks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field protected mPortraitLooks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field protected mRepresentationLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field protected mRotationFilter:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

.field protected mTools:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    .line 39
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mRepresentationLookup:Ljava/util/HashMap;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mLooks:Ljava/util/ArrayList;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mPortraitLooks:Ljava/util/ArrayList;

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mDelicacyLooks:Ljava/util/ArrayList;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mMovieLooks:Ljava/util/ArrayList;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mBorders:Ljava/util/ArrayList;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mTools:Ljava/util/ArrayList;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mEffects:Ljava/util/ArrayList;

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mCaptions:Ljava/util/ArrayList;

    .line 54
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mRotationFilter:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 55
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mCropFilter:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-void
.end method


# virtual methods
.method public addBorders(Landroid/content/Context;)V
    .locals 11

    const-string v0, "FRAME_4X5"

    const-string v1, "FRAME_BRUSH"

    const-string v2, "FRAME_GRUNGE"

    const-string v3, "FRAME_SUMI_E"

    const-string v4, "FRAME_TAPE"

    const-string v5, "FRAME_BLACK"

    const-string v6, "FRAME_BLACK_ROUNDED"

    const-string v7, "FRAME_WHITE"

    const-string v8, "FRAME_WHITE_ROUNDED"

    const-string v9, "FRAME_CREAM"

    const-string v10, "FRAME_CREAM_ROUNDED"

    .line 206
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object p1

    .line 222
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;-><init>(I)V

    .line 223
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mBorders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    new-instance v2, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    const v3, 0x7f070152

    invoke-direct {v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;-><init>(I)V

    .line 230
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v2, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    const v3, 0x7f070153

    invoke-direct {v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;-><init>(I)V

    .line 233
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v2, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    const v3, 0x7f070154

    invoke-direct {v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;-><init>(I)V

    .line 236
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v2, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    const v3, 0x7f070155

    invoke-direct {v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;-><init>(I)V

    .line 239
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v2, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;

    const v3, 0x7f070156

    invoke-direct {v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterImageBorderRepresentation;-><init>(I)V

    .line 242
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v2, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    sget v3, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mImageBorderSize:I

    const/high16 v4, -0x1000000

    invoke-direct {v2, v4, v3, v1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;-><init>(III)V

    .line 245
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v2, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    sget v3, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mImageBorderSize:I

    invoke-direct {v2, v4, v3, v3}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;-><init>(III)V

    .line 249
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v2, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    sget v3, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mImageBorderSize:I

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3, v1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;-><init>(III)V

    .line 252
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v2, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    sget v3, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mImageBorderSize:I

    invoke-direct {v2, v4, v3, v3}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;-><init>(III)V

    .line 256
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xff

    const/16 v3, 0xed

    const/16 v4, 0xe3

    .line 258
    invoke-static {v2, v3, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 259
    new-instance v3, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    sget v4, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mImageBorderSize:I

    invoke-direct {v3, v2, v4, v1}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;-><init>(III)V

    .line 260
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v3, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;

    sget v4, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mImageBorderSize:I

    invoke-direct {v3, v2, v4, v4}, Lcom/zui/gallery/filtershow/filters/FilterColorBorderRepresentation;-><init>(III)V

    .line 264
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    add-int/lit8 v3, v1, 0x1

    .line 267
    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->addRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 269
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mBorders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addCaptions(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/filtershow/caption/data/AssetItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 379
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 380
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    .line 381
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getAsset()Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v2

    .line 383
    new-instance v3, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    iget-object v4, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/meishefilter/NvAsset;Lcom/zui/gallery/filtershow/caption/data/AssetItem;)V

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CAPTION"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f10006f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setCaptionContent(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v3, v0}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setNameResource(I)V

    .line 390
    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>()V

    .line 391
    invoke-virtual {v1, v3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 392
    new-instance v4, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    iget-object v2, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->name:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-direct {v4, v2, v1, v5}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;I)V

    .line 394
    iget-object v1, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mCaptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {p0, v3}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->addRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addDelicacyLooks(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 347
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 348
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    .line 349
    new-instance v1, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    .line 350
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/meishefilter/FilterItem;)V

    .line 351
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 352
    new-instance v2, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>()V

    .line 353
    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 354
    new-instance v3, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    .line 355
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-direct {v3, v0, v2, v4}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;I)V

    .line 356
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mDelicacyLooks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->addRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addEffects()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mEffects:Ljava/util/ArrayList;

    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mEffects:Ljava/util/ArrayList;

    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterWBalance;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mEffects:Ljava/util/ArrayList;

    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterExposure;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mEffects:Ljava/util/ArrayList;

    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterContrast;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mEffects:Ljava/util/ArrayList;

    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterVibrance;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mEffects:Ljava/util/ArrayList;

    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterShadows;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mEffects:Ljava/util/ArrayList;

    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterHighlights;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mEffects:Ljava/util/ArrayList;

    const-class v1, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->getRepresentation(Ljava/lang/Class;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addFilterClasses(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 137
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterTinyPlanet;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 138
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterRedEye;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 139
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterWBalance;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 140
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterExposure;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterVignette;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 142
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterGrad;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 143
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterContrast;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 144
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterShadows;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 145
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterHighlights;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 146
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterVibrance;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 147
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterSharpen;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 148
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterCurves;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 149
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterDraw;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 150
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterHue;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 151
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterChanSat;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 152
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterSaturated;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 153
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterBwFilter;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 154
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterNegative;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 155
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterEdge;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 156
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterKMeans;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 157
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 158
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 159
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterColorBorder;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 160
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLooks(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 317
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 318
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    .line 319
    new-instance v1, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    .line 320
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/meishefilter/FilterItem;)V

    .line 321
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 322
    new-instance v2, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>()V

    .line 323
    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 324
    new-instance v3, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    .line 325
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-direct {v3, v0, v2, v4}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;I)V

    .line 326
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mLooks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->addRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addMovieLooks(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 362
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 363
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    .line 364
    new-instance v1, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    .line 365
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/meishefilter/FilterItem;)V

    .line 366
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 367
    new-instance v2, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>()V

    .line 368
    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 369
    new-instance v3, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    .line 370
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-direct {v3, v0, v2, v4}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;I)V

    .line 371
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mMovieLooks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->addRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addPortraitLooks(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 332
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 333
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    .line 334
    new-instance v1, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;

    .line 335
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/meishefilter/FilterItem;)V

    .line 336
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterFxRepresentation;->setSerializationName(Ljava/lang/String;)V

    .line 337
    new-instance v2, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>()V

    .line 338
    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 339
    new-instance v3, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    .line 340
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-direct {v3, v0, v2, v4}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;I)V

    .line 341
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mPortraitLooks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->addRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mRepresentationLookup:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getSerializationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTools(Landroid/content/Context;)V
    .locals 8

    .line 423
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mTools:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 425
    fill-array-data v1, :array_0

    new-array v2, v0, [I

    .line 432
    fill-array-data v2, :array_1

    new-array v3, v0, [Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 439
    new-instance v4, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-direct {v4}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;

    invoke-direct {v4}, Lcom/zui/gallery/filtershow/filters/FilterStraightenRepresentation;-><init>()V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-instance v4, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-direct {v4}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;-><init>()V

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-instance v4, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    invoke-direct {v4}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;-><init>()V

    const/4 v7, 0x3

    aput-object v4, v3, v7

    :goto_0
    if-ge v5, v0, :cond_1

    .line 447
    aget-object v4, v3, v5

    .line 448
    aget v7, v1, v5

    invoke-virtual {v4, v7}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTextId(I)V

    .line 449
    aget v7, v2, v5

    invoke-virtual {v4, v7}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setOverlayId(I)V

    .line 450
    invoke-virtual {v4, v6}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setOverlayOnly(Z)V

    .line 451
    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v7

    if-eqz v7, :cond_0

    .line 452
    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    .line 454
    :cond_0
    iget-object v7, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mTools:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7f1000a5
        0x7f100273
        0x7f100217
        0x7f1001a9
    .end array-data

    :array_1
    .array-data 4
        0x7f07015b
        0x7f07015e
        0x7f07015d
        0x7f07015c
    .end array-data
.end method

.method public createCropFilter(Landroid/content/Context;)V
    .locals 2

    .line 477
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterCropRepresentation;-><init>()V

    const v1, 0x7f1000a5

    .line 478
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTextId(I)V

    const v1, 0x7f07015b

    .line 479
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setOverlayId(I)V

    const/4 v1, 0x1

    .line 480
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setOverlayOnly(Z)V

    .line 481
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    .line 484
    :cond_0
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mCropFilter:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-void
.end method

.method public createFilterFromName(Ljava/lang/String;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 3

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mRepresentationLookup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to generate a filter representation for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseFiltersManager"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createRotationFilter(Landroid/content/Context;)V
    .locals 2

    .line 465
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;-><init>()V

    const v1, 0x7f100217

    .line 466
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setTextId(I)V

    const v1, 0x7f07015d

    .line 467
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setOverlayId(I)V

    const/4 v1, 0x1

    .line 468
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setOverlayOnly(Z)V

    .line 469
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    .line 472
    :cond_0
    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mRotationFilter:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-void
.end method

.method public freeFilterResources(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getUsedFilters(Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;)Ljava/util/Vector;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 120
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/ImageFilter;

    .line 121
    invoke-virtual {p1, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->freeResources()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public freeRSFilterScripts()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 129
    iget-object v2, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/ImageFilter;

    if-eqz v1, :cond_0

    .line 130
    instance-of v2, v1, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;

    if-eqz v2, :cond_0

    .line 131
    check-cast v1, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/ImageFilterRS;->resetScripts()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBorders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mBorders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCaptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mCaptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCropFilter()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mCropFilter:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-object v0
.end method

.method public getDelicacyLooks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mDelicacyLooks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEffects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFilter(Ljava/lang/Class;)Lcom/zui/gallery/filtershow/filters/ImageFilter;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/ImageFilter;

    return-object p1
.end method

.method public getFilterForRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/filters/ImageFilter;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/ImageFilter;

    return-object p1
.end method

.method public getLooks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mLooks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMovieLooks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mMovieLooks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPortraitLooks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mPortraitLooks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRepresentation(Ljava/lang/Class;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/ImageFilter;

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRotationFilter()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mRotationFilter:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-object v0
.end method

.method public getTools()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mTools:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected init()V
    .locals 5

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mRepresentationLookup:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 62
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->addFilterClasses(Ljava/util/Vector;)V

    .line 63
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 65
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 66
    instance-of v3, v2, Lcom/zui/gallery/filtershow/filters/ImageFilter;

    if-eqz v3, :cond_0

    .line 67
    iget-object v3, p0, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->mFilters:Ljava/util/HashMap;

    move-object v4, v2

    check-cast v4, Lcom/zui/gallery/filtershow/filters/ImageFilter;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    check-cast v2, Lcom/zui/gallery/filtershow/filters/ImageFilter;

    .line 70
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->getDefaultRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->addRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeRepresentation(Ljava/util/ArrayList;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 491
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 492
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 493
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 494
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setFilterResources(Landroid/content/res/Resources;)V
    .locals 1

    .line 501
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->getFilter(Ljava/lang/Class;)Lcom/zui/gallery/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;

    .line 502
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/ImageFilterBorder;->setResources(Landroid/content/res/Resources;)V

    .line 503
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->getFilter(Ljava/lang/Class;)Lcom/zui/gallery/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;

    .line 504
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/ImageFilterFx;->setResources(Landroid/content/res/Resources;)V

    .line 506
    const-class v0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/filters/BaseFiltersManager;->getFilter(Ljava/lang/Class;)Lcom/zui/gallery/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;

    .line 507
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/ImageFilterCaption;->setResources(Landroid/content/res/Resources;)V

    return-void
.end method
