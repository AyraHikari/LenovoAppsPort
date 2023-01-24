.class public Lcom/zui/gallery/filtershow/caption/data/AssetItem;
.super Ljava/lang/Object;
.source "AssetItem.java"


# static fields
.field public static final ASSET_BUILTIN:I = 0x3

.field public static final ASSET_LOCAL:I = 0x2

.field public static final ASSET_NONE:I = 0x1


# instance fields
.field private mAsset:Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

.field private mAssetBitmap:Landroid/graphics/Bitmap;

.field private mAssetMode:I

.field private mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

.field private mFilterColor:Ljava/lang/String;

.field private mImageRes:I

.field private mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mAsset:Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    return-object p0
.end method

.method static synthetic access$002(Lcom/zui/gallery/filtershow/caption/data/AssetItem;Lcom/zui/gallery/filtershow/meishefilter/NvAsset;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mAsset:Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mImageRes:I

    return p0
.end method

.method static synthetic access$102(Lcom/zui/gallery/filtershow/caption/data/AssetItem;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mImageRes:I

    return p1
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mAssetMode:I

    return p0
.end method

.method static synthetic access$202(Lcom/zui/gallery/filtershow/caption/data/AssetItem;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mAssetMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mAssetBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/zui/gallery/filtershow/caption/data/AssetItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mAssetBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    return-object p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/filtershow/caption/data/AssetItem;Lcom/meicam/effect/sdk/NvsVideoEffectCaption;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    return-object p1
.end method

.method static synthetic access$500(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)Lcom/meicam/effect/sdk/NvsEffectSdkContext;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    return-object p0
.end method


# virtual methods
.method public copy(Lcom/zui/gallery/filtershow/caption/data/AssetItem;)Lcom/zui/gallery/filtershow/caption/data/AssetItem;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 118
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    new-instance v1, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;

    invoke-direct {v1, p0, p1, p0}, Lcom/zui/gallery/filtershow/caption/data/AssetItem$1;-><init>(Lcom/zui/gallery/filtershow/caption/data/AssetItem;Lcom/zui/gallery/filtershow/caption/data/AssetItem;Lcom/zui/gallery/filtershow/caption/data/AssetItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GroupUtils;->addTotalCaptionSize(Landroid/content/Context;Z)V

    return-object p0
.end method

.method public getAsset()Lcom/zui/gallery/filtershow/meishefilter/NvAsset;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mAsset:Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    return-object v0
.end method

.method public getAssetMode()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mAssetMode:I

    return v0
.end method

.method public getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    return-object v0
.end method

.method public getFilterColor()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mFilterColor:Ljava/lang/String;

    return-object v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mAssetBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageRes()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mImageRes:I

    return v0
.end method

.method public getmNvsEffectSdkContext()Lcom/meicam/effect/sdk/NvsEffectSdkContext;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    return-object v0
.end method

.method public setAsset(Lcom/zui/gallery/filtershow/meishefilter/NvAsset;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mAsset:Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    return-void
.end method

.method public setAssetMode(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mAssetMode:I

    return-void
.end method

.method public setCaptionEffect(Lcom/meicam/effect/sdk/NvsVideoEffectCaption;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mCaptionEffect:Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    return-void
.end method

.method public setFilterColor(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mFilterColor:Ljava/lang/String;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mAssetBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImageRes(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mImageRes:I

    return-void
.end method

.method public setmNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    return-void
.end method
