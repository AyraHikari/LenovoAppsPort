.class Lcom/zui/gallery/data/LocationClustering$SmallItem;
.super Ljava/lang/Object;
.source "LocationClustering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/LocationClustering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmallItem"
.end annotation


# instance fields
.field lat:D

.field lng:D

.field path:Lcom/zui/gallery/data/Path;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/data/LocationClustering$1;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/zui/gallery/data/LocationClustering$SmallItem;-><init>()V

    return-void
.end method
