.class Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;
.super Ljava/lang/Object;
.source "AlbumSetDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/AlbumSetDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfo"
.end annotation


# instance fields
.field public albumEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/AlbumSetCategoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field public cover:Lcom/zui/gallery/data/MediaItem;

.field public cover2:Lcom/zui/gallery/data/MediaItem;

.field public cover3:Lcom/zui/gallery/data/MediaItem;

.field public index:I

.field public item:Lcom/zui/gallery/data/MediaSet;

.field public size:I

.field public totalCount:I

.field public version:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/AlbumSetDataLoader$1;)V
    .locals 0

    .line 303
    invoke-direct {p0}, Lcom/zui/gallery/app/AlbumSetDataLoader$UpdateInfo;-><init>()V

    return-void
.end method
