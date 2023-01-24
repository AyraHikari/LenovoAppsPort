.class public Lcom/zui/gallery/app/FilterUtils;
.super Ljava/lang/Object;
.source "FilterUtils.java"


# static fields
.field public static final CLUSTER_BY_ALBUM:I = 0x1

.field public static final CLUSTER_BY_FACE:I = 0x20

.field public static final CLUSTER_BY_LOCATION:I = 0x4

.field public static final CLUSTER_BY_SIZE:I = 0x10

.field public static final CLUSTER_BY_TAG:I = 0x8

.field public static final CLUSTER_BY_TIME:I = 0x2

.field private static final CLUSTER_CURRENT_TYPE:I = 0x4

.field private static final CLUSTER_TYPE:I = 0x0

.field private static final CLUSTER_TYPE_F:I = 0x2

.field public static final FILTER_ALL:I = 0x4

.field private static final FILTER_CURRENT_TYPE:I = 0x5

.field public static final FILTER_IMAGE_ONLY:I = 0x1

.field private static final FILTER_TYPE:I = 0x1

.field private static final FILTER_TYPE_F:I = 0x3

.field public static final FILTER_VIDEO_ONLY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FilterUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAppliedFilters(Lcom/zui/gallery/data/Path;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-static {p0, p1, v0}, Lcom/zui/gallery/app/FilterUtils;->getAppliedFilters(Lcom/zui/gallery/data/Path;[IZ)V

    return-void
.end method

.method private static getAppliedFilters(Lcom/zui/gallery/data/Path;[IZ)V
    .locals 5

    .line 123
    invoke-virtual {p0}, Lcom/zui/gallery/data/Path;->split()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 125
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 126
    aget-object v2, p0, v1

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/zui/gallery/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v3, v0

    .line 128
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 129
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v4

    .line 130
    invoke-static {v4, p1, p2}, Lcom/zui/gallery/app/FilterUtils;->getAppliedFilters(Lcom/zui/gallery/data/Path;[IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    aget-object v1, p0, v0

    const-string v2, "cluster"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 138
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 p2, 0x1

    :cond_2
    const/4 v1, 0x2

    .line 142
    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/zui/gallery/app/FilterUtils;->toClusterType(Ljava/lang/String;)I

    move-result p0

    .line 143
    aget v3, p1, v0

    or-int/2addr v3, p0

    aput v3, p1, v0

    .line 144
    aput p0, p1, v2

    if-eqz p2, :cond_3

    .line 146
    aget p2, p1, v1

    or-int/2addr p0, p2

    aput p0, p1, v1

    :cond_3
    return-void
.end method

.method public static newClusterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    return-object p0

    :cond_0
    const-string p1, "face"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "size"

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "tag"

    goto :goto_0

    :cond_3
    const-string p1, "location"

    goto :goto_0

    :cond_4
    const-string/jumbo p1, "time"

    .line 215
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/cluster/{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newFilterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x4

    .line 189
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/filter/mediatype/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeOneClusterFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 226
    invoke-static {p0, v0}, Lcom/zui/gallery/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 230
    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    return-object p0

    .line 232
    :cond_0
    invoke-static {p0}, Lcom/zui/gallery/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 233
    aget-object v1, p0, v0

    const-string v2, "cluster"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 234
    aput-boolean v1, p1, v0

    .line 235
    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/zui/gallery/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    .line 238
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v0

    .line 239
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    const-string v3, "/"

    .line 240
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    aget-object v3, p0, v2

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 242
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/zui/gallery/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v4, v0

    .line 244
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_3

    if-lez v4, :cond_2

    const-string v5, ","

    .line 246
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_2
    aget-object v5, v3, v4

    invoke-static {v5, p1}, Lcom/zui/gallery/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "}"

    .line 250
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 252
    :cond_4
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static setMenuItemApplied(Lcom/zui/gallery/app/GalleryActionBar;IZZ)V
    .locals 0

    return-void
.end method

.method private static setMenuItemAppliedEnabled(Lcom/zui/gallery/app/GalleryActionBar;IZZZ)V
    .locals 0

    return-void
.end method

.method public static setupMenuItems(Lcom/zui/gallery/app/GalleryActionBar;Lcom/zui/gallery/data/Path;Z)V
    .locals 9

    const/4 p2, 0x6

    new-array p2, p2, [I

    .line 82
    invoke-static {p1, p2}, Lcom/zui/gallery/app/FilterUtils;->getAppliedFilters(Lcom/zui/gallery/data/Path;[I)V

    const/4 p1, 0x0

    .line 83
    aget v0, p2, p1

    const/4 v1, 0x1

    .line 84
    aget v2, p2, v1

    const/4 v3, 0x3

    .line 85
    aget v3, p2, v3

    const/4 v4, 0x4

    .line 86
    aget v5, p2, v4

    const/4 v6, 0x5

    .line 87
    aget p2, p2, v6

    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p1

    :goto_0
    and-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, p1

    :goto_1
    const/4 v8, 0x2

    .line 89
    invoke-static {p0, v8, v6, v7}, Lcom/zui/gallery/app/FilterUtils;->setMenuItemApplied(Lcom/zui/gallery/app/GalleryActionBar;IZZ)V

    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, p1

    :goto_2
    and-int/lit8 v7, v5, 0x4

    if-eqz v7, :cond_3

    move v7, v1

    goto :goto_3

    :cond_3
    move v7, p1

    .line 91
    :goto_3
    invoke-static {p0, v4, v6, v7}, Lcom/zui/gallery/app/FilterUtils;->setMenuItemApplied(Lcom/zui/gallery/app/GalleryActionBar;IZZ)V

    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_4

    move v4, v1

    goto :goto_4

    :cond_4
    move v4, p1

    :goto_4
    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_5

    move v6, v1

    goto :goto_5

    :cond_5
    move v6, p1

    :goto_5
    const/16 v7, 0x8

    .line 93
    invoke-static {p0, v7, v4, v6}, Lcom/zui/gallery/app/FilterUtils;->setMenuItemApplied(Lcom/zui/gallery/app/GalleryActionBar;IZZ)V

    const/16 v4, 0x20

    and-int/2addr v0, v4

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, p1

    :goto_6
    and-int/2addr v5, v4

    if-eqz v5, :cond_7

    move v5, v1

    goto :goto_7

    :cond_7
    move v5, p1

    .line 95
    :goto_7
    invoke-static {p0, v4, v0, v5}, Lcom/zui/gallery/app/FilterUtils;->setMenuItemApplied(Lcom/zui/gallery/app/GalleryActionBar;IZZ)V

    const v0, 0x7f10025e

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_8

    move v5, v1

    goto :goto_8

    :cond_8
    move v5, p1

    :goto_8
    if-nez v4, :cond_9

    if-nez v3, :cond_9

    move v4, v1

    goto :goto_9

    :cond_9
    move v4, p1

    :goto_9
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_a

    move v6, v1

    goto :goto_a

    :cond_a
    move v6, p1

    .line 105
    :goto_a
    invoke-static {p0, v0, v5, v4, v6}, Lcom/zui/gallery/app/FilterUtils;->setMenuItemAppliedEnabled(Lcom/zui/gallery/app/GalleryActionBar;IZZZ)V

    const v0, 0x7f100261

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_b

    move v5, v1

    goto :goto_b

    :cond_b
    move v5, p1

    :goto_b
    if-nez v4, :cond_c

    if-nez v3, :cond_c

    move v4, v1

    goto :goto_c

    :cond_c
    move v4, p1

    :goto_c
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_d

    move v6, v1

    goto :goto_d

    :cond_d
    move v6, p1

    .line 109
    :goto_d
    invoke-static {p0, v0, v5, v4, v6}, Lcom/zui/gallery/app/FilterUtils;->setMenuItemAppliedEnabled(Lcom/zui/gallery/app/GalleryActionBar;IZZZ)V

    const v0, 0x7f10025d

    if-nez v2, :cond_e

    move v4, v1

    goto :goto_e

    :cond_e
    move v4, p1

    :goto_e
    if-eqz v2, :cond_f

    if-nez v3, :cond_f

    move v2, v1

    goto :goto_f

    :cond_f
    move v2, p1

    :goto_f
    if-nez p2, :cond_10

    move p1, v1

    .line 113
    :cond_10
    invoke-static {p0, v0, v4, v2, p1}, Lcom/zui/gallery/app/FilterUtils;->setMenuItemAppliedEnabled(Lcom/zui/gallery/app/GalleryActionBar;IZZZ)V

    return-void
.end method

.method public static switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 220
    invoke-static {p0}, Lcom/zui/gallery/app/FilterUtils;->removeOneClusterFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/zui/gallery/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toClusterType(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "time"

    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-string v0, "location"

    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const-string/jumbo v0, "tag"

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x8

    return p0

    :cond_2
    const-string/jumbo v0, "size"

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x10

    return p0

    :cond_3
    const-string v0, "face"

    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x20

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
