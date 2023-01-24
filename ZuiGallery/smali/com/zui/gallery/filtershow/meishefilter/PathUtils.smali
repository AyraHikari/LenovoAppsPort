.class public Lcom/zui/gallery/filtershow/meishefilter/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# static fields
.field private static ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_ANIMATEDSTICKER:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_ARSCENE:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_CAPTION:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_CAPTURE_SCENE:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_COMPOUND_CAPTION:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_CUSTOM_ANIMATED_STICKER:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_FACE1_STICKER:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_FACE_STICKER:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_FILTER:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_FONT:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_GIFCONVERT:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_PARTICLE:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_PHOTO_ALBUM:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_SUPER_ZOOM:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_THEME:Ljava/lang/String;

.field private static ASSET_DOWNLOAD_DIRECTORY_TRANSITION:Ljava/lang/String;

.field private static AUDIO_RECORD_DIRECTORY:Ljava/lang/String;

.field private static BOOMRANG_RECORDING_DIRECTORY:Ljava/lang/String;

.field private static CAPTURESCENE_RECORDING_DIRECTORY:Ljava/lang/String;

.field private static COVER_IMAGE_DIRECTORY:Ljava/lang/String;

.field private static CREASH_LOG_DIRECTORY:Ljava/lang/String;

.field private static DOUYIN_CONVERT_DIRECTORY:Ljava/lang/String;

.field private static DOUYIN_RECORDING_DIRECTORY:Ljava/lang/String;

.field private static FLASH_EFFECT_RECORDING_DIRECTORY:Ljava/lang/String;

.field private static PARTICLE_DIRECTORY:Ljava/lang/String;

.field private static PHOTO_ALBUM_DIRECTORY:Ljava/lang/String;

.field private static PICINPIC_DIRECTORY:Ljava/lang/String;

.field private static RECORDING_DIRECTORY:Ljava/lang/String;

.field private static SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

.field private static SUPERZOOM_RECORDING_DIRECTORY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static VIDEOCOMPILE_DIRECTORY:Ljava/lang/String;

.field private static WATERMARK_CAF_DIRECTORY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    const-class v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NvStreamingSdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Record"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->RECORDING_DIRECTORY:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AudioRecord"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->AUDIO_RECORD_DIRECTORY:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DouYinRecord"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->DOUYIN_RECORDING_DIRECTORY:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DouYinConvert"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->DOUYIN_CONVERT_DIRECTORY:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Cover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->COVER_IMAGE_DIRECTORY:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Particle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->PARTICLE_DIRECTORY:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->CREASH_LOG_DIRECTORY:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WaterMark"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->WATERMARK_CAF_DIRECTORY:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PicInPic"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->PICINPIC_DIRECTORY:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Compile"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->VIDEOCOMPILE_DIRECTORY:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CaptureScene"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->CAPTURESCENE_RECORDING_DIRECTORY:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "BoomRang"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->BOOMRANG_RECORDING_DIRECTORY:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "FlashEffect"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->FLASH_EFFECT_RECORDING_DIRECTORY:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SuperZoom"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SUPERZOOM_RECORDING_DIRECTORY:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PhotoAlbum"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->PHOTO_ALBUM_DIRECTORY:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SDK_FILE_ROOT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Asset"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Filter"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_FILTER:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Theme"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_THEME:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Caption"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_CAPTION:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "AnimatedSticker"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_ANIMATEDSTICKER:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Transition"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_TRANSITION:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Font"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_FONT:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_CAPTURE_SCENE:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_PARTICLE:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FaceSticker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_FACE_STICKER:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CustomAnimatedSticker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_CUSTOM_ANIMATED_STICKER:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Face1Sticker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_FACE1_STICKER:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Meicam"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_SUPER_ZOOM:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ArScene"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_ARSCENE:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GifConvert"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_GIFCONVERT:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CompoundCaption"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_COMPOUND_CAPTION:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_PHOTO_ALBUM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteDirectoryFile(Ljava/io/File;)V
    .locals 2

    .line 85
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 88
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 89
    aget-object v1, p0, v0

    .line 90
    invoke-static {v1}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->deleteDirectoryFile(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 3

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 69
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 70
    aget-object v2, p0, v1

    .line 71
    invoke-static {v2}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->deleteDirectoryFile(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    :goto_1
    return-void
.end method

.method private static getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 312
    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAssetDownloadPath(I)Ljava/lang/String;
    .locals 1

    .line 258
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-object v0

    .line 305
    :pswitch_1
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_PHOTO_ALBUM:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 302
    :pswitch_2
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_COMPOUND_CAPTION:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 299
    :pswitch_3
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_ARSCENE:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 296
    :pswitch_4
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_SUPER_ZOOM:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 290
    :pswitch_5
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_CUSTOM_ANIMATED_STICKER:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 293
    :pswitch_6
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_FACE1_STICKER:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 287
    :pswitch_7
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_FACE_STICKER:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 284
    :pswitch_8
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_PARTICLE:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 281
    :pswitch_9
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_CAPTURE_SCENE:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 278
    :pswitch_a
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_FONT:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 275
    :pswitch_b
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_TRANSITION:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 272
    :pswitch_c
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_ANIMATEDSTICKER:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 269
    :pswitch_d
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_CAPTION:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 266
    :pswitch_e
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_FILTER:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :pswitch_f
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_THEME:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getAssetVersionWithPath(Ljava/lang/String;)I
    .locals 3

    const-string v0, "/"

    .line 531
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 532
    array-length v0, p0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 533
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-object p0, p0, v0

    const-string v0, "."

    .line 534
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 535
    array-length v0, p0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 536
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public static getAudioRecordFilePath()Ljava/lang/String;
    .locals 1

    .line 250
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->AUDIO_RECORD_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBoomrangRecordingDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 190
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->BOOMRANG_RECORDING_DIRECTORY:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getCharacterAndNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {p0, v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCaptureSceneLocalFilePath()Ljava/lang/String;
    .locals 3

    .line 555
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_CAPTURE_SCENE:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->TAG:Ljava/lang/String;

    const-string v1, "Failed to make asset download capture scene directory"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0

    .line 562
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCaptureSceneRecordVideoPath()Ljava/lang/String;
    .locals 3

    .line 176
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->CAPTURESCENE_RECORDING_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getCharacterAndNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCharacterAndNumber()Ljava/lang/String;
    .locals 2

    .line 254
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCoverImagePath()Ljava/lang/String;
    .locals 3

    .line 234
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->COVER_IMAGE_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 237
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getCharacterAndNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDouYinConvertDir()Ljava/lang/String;
    .locals 1

    .line 120
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->DOUYIN_CONVERT_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDouYinRecordDir()Ljava/lang/String;
    .locals 1

    .line 104
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->DOUYIN_RECORDING_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDouYinRecordVideoPath()Ljava/lang/String;
    .locals 3

    .line 112
    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getDouYinRecordDir()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getCharacterAndNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 316
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 318
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 321
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileModifiedTime(Ljava/lang/String;)J
    .locals 2

    .line 546
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 550
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 520
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2e

    .line 521
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2f

    .line 522
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 523
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 524
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getFileNameNoExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    .line 509
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2e

    .line 510
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2f

    .line 511
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 512
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 513
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getFlashEffectRecordingDirectory()Ljava/lang/String;
    .locals 3

    .line 204
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->FLASH_EFFECT_RECORDING_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getCharacterAndNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 325
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create file dir path--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 330
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGifConvertDir()Ljava/lang/String;
    .locals 1

    .line 108
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->ASSET_DOWNLOAD_DIRECTORY_GIFCONVERT:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogDir()Ljava/lang/String;
    .locals 1

    .line 124
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->CREASH_LOG_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParticleRecordPath()Ljava/lang/String;
    .locals 3

    .line 242
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->PARTICLE_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 245
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getCharacterAndNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoAblumDirPath()Ljava/lang/String;
    .locals 1

    .line 152
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->PHOTO_ALBUM_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoAlbumVideoPath()Ljava/lang/String;
    .locals 3

    .line 160
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->PHOTO_ALBUM_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getCharacterAndNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPicInPicDirPath()Ljava/lang/String;
    .locals 1

    .line 136
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->PICINPIC_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRealFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const-string v0, "\\"

    const-string v1, "/"

    .line 487
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 489
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    array-length p0, v0

    const/4 v2, 0x1

    if-le p0, v2, :cond_2

    const/4 p0, 0x0

    .line 492
    :goto_0
    array-length p1, v0

    sub-int/2addr p1, v2

    if-ge p0, p1, :cond_0

    .line 493
    aget-object p1, v0, p0

    .line 494
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    move-object v1, v3

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 498
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 499
    :cond_1
    array-length p0, v0

    sub-int/2addr p0, v2

    aget-object p0, v0, p0

    .line 500
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1

    .line 503
    :cond_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getRecordPicturePath()Ljava/lang/String;
    .locals 3

    .line 226
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->RECORDING_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getCharacterAndNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordVideoPath()Ljava/lang/String;
    .locals 3

    .line 168
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->RECORDING_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getCharacterAndNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSuperZoomRecordingDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 218
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->SUPERZOOM_RECORDING_DIRECTORY:Ljava/lang/String;

    invoke-static {p0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getCharacterAndNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {p0, v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFileDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoCompileDirPath()Ljava/lang/String;
    .locals 1

    .line 144
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->VIDEOCOMPILE_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWatermarkCafDirectoryDir()Ljava/lang/String;
    .locals 1

    .line 128
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->WATERMARK_CAF_DIRECTORY:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFolderDirPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unZipAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5

    .line 338
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v0, 0x0

    .line 351
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 352
    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-direct {p1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 357
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    const/high16 v1, 0x100000

    new-array v1, v1, [B

    :goto_0
    if-eqz p0, :cond_6

    .line 377
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_1

    .line 383
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_5

    .line 384
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto :goto_2

    .line 391
    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_3

    .line 396
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_5

    .line 397
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 398
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 399
    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_4

    .line 400
    invoke-virtual {p0, v1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 402
    :cond_4
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 409
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    goto :goto_0

    .line 411
    :cond_6
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 413
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method public static unZipFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    .line 426
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 431
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    const/16 v2, 0x400

    new-array v3, v2, [B

    .line 434
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 435
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 440
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 443
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getRealFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 452
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 456
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 459
    :try_start_2
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 465
    :goto_1
    :try_start_3
    invoke-virtual {v6, v3, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 466
    invoke-virtual {v5, v3, v0, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 472
    :cond_1
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 473
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    return v0

    .line 479
    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 p0, 0x1

    return p0

    :catch_1
    return v0

    :catch_2
    move-exception p0

    .line 428
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method
