.class public Lcom/zui/gallery/data/MediaSource$PathId;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathId"
.end annotation


# instance fields
.field public id:I

.field public path:Lcom/zui/gallery/data/Path;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/data/Path;I)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/zui/gallery/data/MediaSource$PathId;->path:Lcom/zui/gallery/data/Path;

    .line 65
    iput p2, p0, Lcom/zui/gallery/data/MediaSource$PathId;->id:I

    return-void
.end method
