.class public Lcom/zui/gallery/util/MediaSetUtils$NameComparator;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/util/MediaSetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/gallery/data/MediaSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/data/MediaSet;)I
    .locals 2

    .line 131
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaSet;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 128
    check-cast p1, Lcom/zui/gallery/data/MediaSet;

    check-cast p2, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/util/MediaSetUtils$NameComparator;->compare(Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/data/MediaSet;)I

    move-result p1

    return p1
.end method
