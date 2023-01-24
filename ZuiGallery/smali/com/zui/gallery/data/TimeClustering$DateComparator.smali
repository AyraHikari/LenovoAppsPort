.class Lcom/zui/gallery/data/TimeClustering$DateComparator;
.super Ljava/lang/Object;
.source "TimeClustering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/TimeClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/gallery/data/SmallItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/data/TimeClustering$1;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/zui/gallery/data/TimeClustering$DateComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zui/gallery/data/SmallItem;Lcom/zui/gallery/data/SmallItem;)I
    .locals 2

    .line 89
    iget-wide v0, p1, Lcom/zui/gallery/data/SmallItem;->dateInMs:J

    iget-wide p1, p2, Lcom/zui/gallery/data/SmallItem;->dateInMs:J

    invoke-static {v0, v1, p1, p2}, Lcom/zui/gallery/common/Utils;->compare(JJ)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 86
    check-cast p1, Lcom/zui/gallery/data/SmallItem;

    check-cast p2, Lcom/zui/gallery/data/SmallItem;

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/data/TimeClustering$DateComparator;->compare(Lcom/zui/gallery/data/SmallItem;Lcom/zui/gallery/data/SmallItem;)I

    move-result p1

    return p1
.end method
