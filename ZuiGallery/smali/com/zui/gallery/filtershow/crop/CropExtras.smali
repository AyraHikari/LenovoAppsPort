.class public Lcom/zui/gallery/filtershow/crop/CropExtras;
.super Ljava/lang/Object;
.source "CropExtras.java"


# static fields
.field public static final KEY_ASPECT_X:Ljava/lang/String; = "aspectX"

.field public static final KEY_ASPECT_Y:Ljava/lang/String; = "aspectY"

.field public static final KEY_CROPPED_RECT:Ljava/lang/String; = "cropped-rect"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_OUTPUT_FORMAT:Ljava/lang/String; = "outputFormat"

.field public static final KEY_OUTPUT_X:Ljava/lang/String; = "outputX"

.field public static final KEY_OUTPUT_Y:Ljava/lang/String; = "outputY"

.field public static final KEY_RETURN_DATA:Ljava/lang/String; = "return-data"

.field public static final KEY_SCALE:Ljava/lang/String; = "scale"

.field public static final KEY_SCALE_UP_IF_NEEDED:Ljava/lang/String; = "scaleUpIfNeeded"

.field public static final KEY_SET_AS_WALLPAPER:Ljava/lang/String; = "set-as-wallpaper"

.field public static final KEY_SHOW_WHEN_LOCKED:Ljava/lang/String; = "showWhenLocked"

.field public static final KEY_SPOTLIGHT_X:Ljava/lang/String; = "spotlightX"

.field public static final KEY_SPOTLIGHT_Y:Ljava/lang/String; = "spotlightY"


# instance fields
.field private mAspectX:I

.field private mAspectY:I

.field private mExtraOutput:Landroid/net/Uri;

.field private mOutputFormat:Ljava/lang/String;

.field private mOutputX:I

.field private mOutputY:I

.field private mReturnData:Z

.field private mScaleUp:Z

.field private mSetAsWallpaper:Z

.field private mShowWhenLocked:Z

.field private mSpotlightX:F

.field private mSpotlightY:F


# direct methods
.method public constructor <init>(IIZIIZZLandroid/net/Uri;Ljava/lang/String;ZFF)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mOutputX:I

    .line 39
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mOutputY:I

    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mScaleUp:Z

    .line 41
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mAspectX:I

    .line 42
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mAspectY:I

    .line 43
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mSetAsWallpaper:Z

    .line 44
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mReturnData:Z

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mExtraOutput:Landroid/net/Uri;

    .line 46
    iput-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mOutputFormat:Ljava/lang/String;

    .line 47
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mShowWhenLocked:Z

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mSpotlightX:F

    .line 49
    iput v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mSpotlightY:F

    .line 54
    iput p1, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mOutputX:I

    .line 55
    iput p2, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mOutputY:I

    .line 56
    iput-boolean p3, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mScaleUp:Z

    .line 57
    iput p4, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mAspectX:I

    .line 58
    iput p5, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mAspectY:I

    .line 59
    iput-boolean p6, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mSetAsWallpaper:Z

    .line 60
    iput-boolean p7, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mReturnData:Z

    .line 61
    iput-object p8, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mExtraOutput:Landroid/net/Uri;

    .line 62
    iput-object p9, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mOutputFormat:Ljava/lang/String;

    .line 63
    iput-boolean p10, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mShowWhenLocked:Z

    .line 64
    iput p11, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mSpotlightX:F

    .line 65
    iput p12, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mSpotlightY:F

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/crop/CropExtras;)V
    .locals 13

    .line 69
    iget v1, p1, Lcom/zui/gallery/filtershow/crop/CropExtras;->mOutputX:I

    iget v2, p1, Lcom/zui/gallery/filtershow/crop/CropExtras;->mOutputY:I

    iget-boolean v3, p1, Lcom/zui/gallery/filtershow/crop/CropExtras;->mScaleUp:Z

    iget v4, p1, Lcom/zui/gallery/filtershow/crop/CropExtras;->mAspectX:I

    iget v5, p1, Lcom/zui/gallery/filtershow/crop/CropExtras;->mAspectY:I

    iget-boolean v6, p1, Lcom/zui/gallery/filtershow/crop/CropExtras;->mSetAsWallpaper:Z

    iget-boolean v7, p1, Lcom/zui/gallery/filtershow/crop/CropExtras;->mReturnData:Z

    iget-object v8, p1, Lcom/zui/gallery/filtershow/crop/CropExtras;->mExtraOutput:Landroid/net/Uri;

    iget-object v9, p1, Lcom/zui/gallery/filtershow/crop/CropExtras;->mOutputFormat:Ljava/lang/String;

    iget-boolean v10, p1, Lcom/zui/gallery/filtershow/crop/CropExtras;->mShowWhenLocked:Z

    iget v11, p1, Lcom/zui/gallery/filtershow/crop/CropExtras;->mSpotlightX:F

    iget v12, p1, Lcom/zui/gallery/filtershow/crop/CropExtras;->mSpotlightY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/zui/gallery/filtershow/crop/CropExtras;-><init>(IIZIIZZLandroid/net/Uri;Ljava/lang/String;ZFF)V

    return-void
.end method


# virtual methods
.method public getAspectX()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mAspectX:I

    return v0
.end method

.method public getAspectY()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mAspectY:I

    return v0
.end method

.method public getExtraOutput()Landroid/net/Uri;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mExtraOutput:Landroid/net/Uri;

    return-object v0
.end method

.method public getOutputFormat()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mOutputFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputX()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mOutputX:I

    return v0
.end method

.method public getOutputY()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mOutputY:I

    return v0
.end method

.method public getReturnData()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mReturnData:Z

    return v0
.end method

.method public getScaleUp()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mScaleUp:Z

    return v0
.end method

.method public getSetAsWallpaper()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mSetAsWallpaper:Z

    return v0
.end method

.method public getShowWhenLocked()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mShowWhenLocked:Z

    return v0
.end method

.method public getSpotlightX()F
    .locals 1

    .line 115
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mSpotlightX:F

    return v0
.end method

.method public getSpotlightY()F
    .locals 1

    .line 119
    iget v0, p0, Lcom/zui/gallery/filtershow/crop/CropExtras;->mSpotlightY:F

    return v0
.end method
