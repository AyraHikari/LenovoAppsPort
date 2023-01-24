.class Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;
.super Ljava/lang/Object;
.source "LocalTimeAlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateInfo"
.end annotation


# instance fields
.field public items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public reloadCount:I

.field public reloadStart:I

.field public size:I

.field public timeEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/data/LocalTimeDateUtil$TimeEntry;",
            ">;"
        }
    .end annotation
.end field

.field public version:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$1;)V
    .locals 0

    .line 370
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$UpdateInfo;-><init>()V

    return-void
.end method
