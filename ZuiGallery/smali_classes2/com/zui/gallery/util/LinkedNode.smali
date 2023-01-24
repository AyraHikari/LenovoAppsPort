.class public Lcom/zui/gallery/util/LinkedNode;
.super Ljava/lang/Object;
.source "LinkedNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/util/LinkedNode$List;
    }
.end annotation


# instance fields
.field mNext:Lcom/zui/gallery/util/LinkedNode;

.field mPrev:Lcom/zui/gallery/util/LinkedNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p0, p0, Lcom/zui/gallery/util/LinkedNode;->mNext:Lcom/zui/gallery/util/LinkedNode;

    iput-object p0, p0, Lcom/zui/gallery/util/LinkedNode;->mPrev:Lcom/zui/gallery/util/LinkedNode;

    return-void
.end method

.method public static newList()Lcom/zui/gallery/util/LinkedNode$List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/zui/gallery/util/LinkedNode;",
            ">()",
            "Lcom/zui/gallery/util/LinkedNode$List<",
            "TT;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/zui/gallery/util/LinkedNode$List;

    invoke-direct {v0}, Lcom/zui/gallery/util/LinkedNode$List;-><init>()V

    return-object v0
.end method


# virtual methods
.method public insert(Lcom/zui/gallery/util/LinkedNode;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/zui/gallery/util/LinkedNode;->mNext:Lcom/zui/gallery/util/LinkedNode;

    iput-object v0, p1, Lcom/zui/gallery/util/LinkedNode;->mNext:Lcom/zui/gallery/util/LinkedNode;

    .line 30
    iget-object v0, p0, Lcom/zui/gallery/util/LinkedNode;->mNext:Lcom/zui/gallery/util/LinkedNode;

    iput-object p1, v0, Lcom/zui/gallery/util/LinkedNode;->mPrev:Lcom/zui/gallery/util/LinkedNode;

    .line 31
    iput-object p0, p1, Lcom/zui/gallery/util/LinkedNode;->mPrev:Lcom/zui/gallery/util/LinkedNode;

    .line 32
    iput-object p1, p0, Lcom/zui/gallery/util/LinkedNode;->mNext:Lcom/zui/gallery/util/LinkedNode;

    return-void
.end method

.method public remove()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/zui/gallery/util/LinkedNode;->mNext:Lcom/zui/gallery/util/LinkedNode;

    if-eq v0, p0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/zui/gallery/util/LinkedNode;->mPrev:Lcom/zui/gallery/util/LinkedNode;

    iput-object v0, v1, Lcom/zui/gallery/util/LinkedNode;->mNext:Lcom/zui/gallery/util/LinkedNode;

    .line 38
    iget-object v0, p0, Lcom/zui/gallery/util/LinkedNode;->mNext:Lcom/zui/gallery/util/LinkedNode;

    iput-object v1, v0, Lcom/zui/gallery/util/LinkedNode;->mPrev:Lcom/zui/gallery/util/LinkedNode;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/zui/gallery/util/LinkedNode;->mNext:Lcom/zui/gallery/util/LinkedNode;

    iput-object v0, p0, Lcom/zui/gallery/util/LinkedNode;->mPrev:Lcom/zui/gallery/util/LinkedNode;

    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
