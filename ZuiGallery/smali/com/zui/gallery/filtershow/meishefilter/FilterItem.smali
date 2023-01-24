.class public Lcom/zui/gallery/filtershow/meishefilter/FilterItem;
.super Ljava/lang/Object;
.source "FilterItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static FILTERMODE_BUILTIN:I = 0x0

.field public static FILTERMODE_BUNDLE:I = 0x1

.field public static FILTERMODE_PACKAGE:I = 0x2


# instance fields
.field private backgroundColor:I

.field private categoryId:I

.field public downloadProgress:I

.field public downloadStatus:I

.field private isCartoon:Z

.field private isGrayScale:Z

.field private isStrokenOnly:Z

.field private m_assetDescription:Ljava/lang/String;

.field private m_filterDesc:Ljava/lang/String;

.field private m_filterId:Ljava/lang/String;

.field private m_filterMode:I

.field private m_filterName:Ljava/lang/String;

.field private m_imageId:I

.field private m_imageUrl:Ljava/lang/String;

.field private m_isSpecialFilter:Z

.field private m_packageId:Ljava/lang/String;

.field private nvsEffect:Lcom/meicam/effect/sdk/NvsEffect;

.field private particleType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_isSpecialFilter:Z

    const/4 v1, -0x1

    .line 41
    iput v1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->categoryId:I

    .line 47
    iput v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->particleType:I

    .line 53
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->isCartoon:Z

    const/4 v1, 0x1

    .line 54
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->isStrokenOnly:Z

    .line 55
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->isGrayScale:Z

    .line 71
    iput v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->downloadProgress:I

    .line 72
    iput v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->downloadStatus:I

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_filterId:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_filterName:Ljava/lang/String;

    .line 77
    sget v2, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->FILTERMODE_BUILTIN:I

    iput v2, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_filterMode:I

    .line 78
    iput v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_imageId:I

    .line 79
    iput-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_imageUrl:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_packageId:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_assetDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAssetDescription()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_assetDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->backgroundColor:I

    return v0
.end method

.method public getCategoryId()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->categoryId:I

    return v0
.end method

.method public getFilterDesc()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_filterDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterId()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_filterId:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterMode()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_filterMode:I

    return v0
.end method

.method public getFilterName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_filterName:Ljava/lang/String;

    return-object v0
.end method

.method public getGrayScale()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->isGrayScale:Z

    return v0
.end method

.method public getImageId()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_imageId:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCartoon()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->isCartoon:Z

    return v0
.end method

.method public getNvsEffect()Lcom/meicam/effect/sdk/NvsEffect;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->nvsEffect:Lcom/meicam/effect/sdk/NvsEffect;

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_packageId:Ljava/lang/String;

    return-object v0
.end method

.method public getParticleType()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->particleType:I

    return v0
.end method

.method public getStrokenOnly()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->isStrokenOnly:Z

    return v0
.end method

.method public isSpecialFilter()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_isSpecialFilter:Z

    return v0
.end method

.method public setAssetDescription(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_assetDescription:Ljava/lang/String;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->backgroundColor:I

    return-void
.end method

.method public setCategoryId(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->categoryId:I

    return-void
.end method

.method public setFilterDesc(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_filterDesc:Ljava/lang/String;

    return-void
.end method

.method public setFilterId(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_filterId:Ljava/lang/String;

    return-void
.end method

.method public setFilterMode(I)V
    .locals 1

    .line 101
    sget v0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->FILTERMODE_BUILTIN:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->FILTERMODE_BUNDLE:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->FILTERMODE_PACKAGE:I

    if-eq p1, v0, :cond_0

    const-string p1, ""

    const-string v0, "invalid mode data"

    .line 102
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 105
    :cond_0
    iput p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_filterMode:I

    return-void
.end method

.method public setFilterName(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_filterName:Ljava/lang/String;

    return-void
.end method

.method public setGrayScale(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->isGrayScale:Z

    return-void
.end method

.method public setImageId(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_imageId:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsCartoon(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->isCartoon:Z

    return-void
.end method

.method public setIsSpecialFilter(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_isSpecialFilter:Z

    return-void
.end method

.method public setNvsEffect(Lcom/meicam/effect/sdk/NvsEffect;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->nvsEffect:Lcom/meicam/effect/sdk/NvsEffect;

    return-void
.end method

.method public setPackageId(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->m_packageId:Ljava/lang/String;

    return-void
.end method

.method public setParticleType(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->particleType:I

    return-void
.end method

.method public setStrokenOnly(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->isStrokenOnly:Z

    return-void
.end method
