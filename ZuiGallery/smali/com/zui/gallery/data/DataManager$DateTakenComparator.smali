.class Lcom/zui/gallery/data/DataManager$DateTakenComparator;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTakenComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/gallery/data/MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/data/DataManager$1;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/zui/gallery/data/DataManager$DateTakenComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zui/gallery/data/MediaItem;Lcom/zui/gallery/data/MediaItem;)I
    .locals 4

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getDateInMs()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getDateInMs()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getDateInMs()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lcom/zui/gallery/common/Utils;->compare(JJ)I

    move-result p1

    :goto_0
    neg-int p1, p1

    return p1

    .line 173
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/common/Utils;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 160
    check-cast p1, Lcom/zui/gallery/data/MediaItem;

    check-cast p2, Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/data/DataManager$DateTakenComparator;->compare(Lcom/zui/gallery/data/MediaItem;Lcom/zui/gallery/data/MediaItem;)I

    move-result p1

    return p1
.end method
