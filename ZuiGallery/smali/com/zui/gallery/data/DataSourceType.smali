.class public final Lcom/zui/gallery/data/DataSourceType;
.super Ljava/lang/Object;
.source "DataSourceType.java"


# static fields
.field private static final LOCAL_ROOT:Lcom/zui/gallery/data/Path;

.field private static final PICASA_ROOT:Lcom/zui/gallery/data/Path;

.field public static final TYPE_CAMERA:I = 0x3

.field public static final TYPE_CAMERA_CONTINUOUS:I = 0x4

.field public static final TYPE_GROUP:I = 0x5

.field public static final TYPE_LOCAL:I = 0x1

.field public static final TYPE_NOT_CATEGORIZED:I = 0x0

.field public static final TYPE_PICASA:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/picasa"

    .line 31
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/DataSourceType;->PICASA_ROOT:Lcom/zui/gallery/data/Path;

    const-string v0, "/local"

    .line 32
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/DataSourceType;->LOCAL_ROOT:Lcom/zui/gallery/data/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static identifySourceType(Lcom/zui/gallery/data/MediaSet;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->isGroupAlbum()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x5

    return p0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p0

    .line 46
    invoke-static {p0}, Lcom/zui/gallery/util/MediaSetUtils;->isCameraSource(Lcom/zui/gallery/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x3

    return p0

    .line 48
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/data/Path;->getPrefixPath()Lcom/zui/gallery/data/Path;

    move-result-object p0

    .line 50
    sget-object v1, Lcom/zui/gallery/data/DataSourceType;->PICASA_ROOT:Lcom/zui/gallery/data/Path;

    if-ne p0, v1, :cond_3

    const/4 p0, 0x2

    return p0

    .line 51
    :cond_3
    sget-object v1, Lcom/zui/gallery/data/DataSourceType;->LOCAL_ROOT:Lcom/zui/gallery/data/Path;

    if-ne p0, v1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method
