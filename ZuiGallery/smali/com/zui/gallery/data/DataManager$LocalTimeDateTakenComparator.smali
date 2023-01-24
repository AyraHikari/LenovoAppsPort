.class Lcom/zui/gallery/data/DataManager$LocalTimeDateTakenComparator;
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
    name = "LocalTimeDateTakenComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/gallery/data/MediaObject;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/data/DataManager$1;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/zui/gallery/data/DataManager$LocalTimeDateTakenComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zui/gallery/data/MediaObject;Lcom/zui/gallery/data/MediaObject;)I
    .locals 2

    .line 182
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaObject;->getDateInMs()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaObject;->getDateInMs()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lcom/zui/gallery/common/Utils;->compare(JJ)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 179
    check-cast p1, Lcom/zui/gallery/data/MediaObject;

    check-cast p2, Lcom/zui/gallery/data/MediaObject;

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/data/DataManager$LocalTimeDateTakenComparator;->compare(Lcom/zui/gallery/data/MediaObject;Lcom/zui/gallery/data/MediaObject;)I

    move-result p1

    return p1
.end method
