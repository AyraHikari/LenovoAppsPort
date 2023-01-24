.class Lcom/zui/gallery/data/FilterDeleteSet$Deletion;
.super Ljava/lang/Object;
.source "FilterDeleteSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/FilterDeleteSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Deletion"
.end annotation


# instance fields
.field index:I

.field path:Lcom/zui/gallery/data/Path;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;I)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;->path:Lcom/zui/gallery/data/Path;

    .line 57
    iput p2, p0, Lcom/zui/gallery/data/FilterDeleteSet$Deletion;->index:I

    return-void
.end method
