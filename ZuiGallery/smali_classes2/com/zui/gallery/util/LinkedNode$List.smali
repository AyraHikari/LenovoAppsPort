.class public Lcom/zui/gallery/util/LinkedNode$List;
.super Ljava/lang/Object;
.source "LinkedNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/util/LinkedNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/zui/gallery/util/LinkedNode;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHead:Lcom/zui/gallery/util/LinkedNode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/zui/gallery/util/LinkedNode;

    invoke-direct {v0}, Lcom/zui/gallery/util/LinkedNode;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/util/LinkedNode$List;->mHead:Lcom/zui/gallery/util/LinkedNode;

    return-void
.end method


# virtual methods
.method public getFirst()Lcom/zui/gallery/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/zui/gallery/util/LinkedNode$List;->mHead:Lcom/zui/gallery/util/LinkedNode;

    iget-object v0, v0, Lcom/zui/gallery/util/LinkedNode;->mNext:Lcom/zui/gallery/util/LinkedNode;

    iget-object v1, p0, Lcom/zui/gallery/util/LinkedNode$List;->mHead:Lcom/zui/gallery/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/zui/gallery/util/LinkedNode;->mNext:Lcom/zui/gallery/util/LinkedNode;

    :goto_0
    return-object v0
.end method

.method public getLast()Lcom/zui/gallery/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/zui/gallery/util/LinkedNode$List;->mHead:Lcom/zui/gallery/util/LinkedNode;

    iget-object v0, v0, Lcom/zui/gallery/util/LinkedNode;->mPrev:Lcom/zui/gallery/util/LinkedNode;

    iget-object v1, p0, Lcom/zui/gallery/util/LinkedNode$List;->mHead:Lcom/zui/gallery/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/zui/gallery/util/LinkedNode;->mPrev:Lcom/zui/gallery/util/LinkedNode;

    :goto_0
    return-object v0
.end method

.method public insertLast(Lcom/zui/gallery/util/LinkedNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/zui/gallery/util/LinkedNode$List;->mHead:Lcom/zui/gallery/util/LinkedNode;

    iget-object v0, v0, Lcom/zui/gallery/util/LinkedNode;->mPrev:Lcom/zui/gallery/util/LinkedNode;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/LinkedNode;->insert(Lcom/zui/gallery/util/LinkedNode;)V

    return-void
.end method

.method public nextOf(Lcom/zui/gallery/util/LinkedNode;)Lcom/zui/gallery/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 59
    iget-object v0, p1, Lcom/zui/gallery/util/LinkedNode;->mNext:Lcom/zui/gallery/util/LinkedNode;

    iget-object v1, p0, Lcom/zui/gallery/util/LinkedNode$List;->mHead:Lcom/zui/gallery/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/zui/gallery/util/LinkedNode;->mNext:Lcom/zui/gallery/util/LinkedNode;

    :goto_0
    return-object p1
.end method

.method public previousOf(Lcom/zui/gallery/util/LinkedNode;)Lcom/zui/gallery/util/LinkedNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p1, Lcom/zui/gallery/util/LinkedNode;->mPrev:Lcom/zui/gallery/util/LinkedNode;

    iget-object v1, p0, Lcom/zui/gallery/util/LinkedNode$List;->mHead:Lcom/zui/gallery/util/LinkedNode;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/zui/gallery/util/LinkedNode;->mPrev:Lcom/zui/gallery/util/LinkedNode;

    :goto_0
    return-object p1
.end method
