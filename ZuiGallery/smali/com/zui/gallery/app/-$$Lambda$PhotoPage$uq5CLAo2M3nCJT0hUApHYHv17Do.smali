.class public final synthetic Lcom/zui/gallery/app/-$$Lambda$PhotoPage$uq5CLAo2M3nCJT0hUApHYHv17Do;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$uq5CLAo2M3nCJT0hUApHYHv17Do;->f$0:Lcom/zui/gallery/app/PhotoPage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$uq5CLAo2M3nCJT0hUApHYHv17Do;->f$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoPage;->lambda$delayUpdateHeadRoot$1$PhotoPage()V

    return-void
.end method
