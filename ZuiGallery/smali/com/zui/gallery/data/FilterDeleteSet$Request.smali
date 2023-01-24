.class Lcom/zui/gallery/data/FilterDeleteSet$Request;
.super Ljava/lang/Object;
.source "FilterDeleteSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/FilterDeleteSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field indexHint:I

.field path:Lcom/zui/gallery/data/Path;

.field type:I


# direct methods
.method public constructor <init>(ILcom/zui/gallery/data/Path;I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/zui/gallery/data/FilterDeleteSet$Request;->type:I

    .line 47
    iput-object p2, p0, Lcom/zui/gallery/data/FilterDeleteSet$Request;->path:Lcom/zui/gallery/data/Path;

    .line 48
    iput p3, p0, Lcom/zui/gallery/data/FilterDeleteSet$Request;->indexHint:I

    return-void
.end method
