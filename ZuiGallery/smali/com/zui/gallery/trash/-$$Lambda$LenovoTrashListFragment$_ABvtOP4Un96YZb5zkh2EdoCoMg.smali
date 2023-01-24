.class public final synthetic Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashListFragment$_ABvtOP4Un96YZb5zkh2EdoCoMg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/trash/LenovoTrashListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashListFragment$_ABvtOP4Un96YZb5zkh2EdoCoMg;->f$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/gallery/trash/-$$Lambda$LenovoTrashListFragment$_ABvtOP4Un96YZb5zkh2EdoCoMg;->f$0:Lcom/zui/gallery/trash/LenovoTrashListFragment;

    invoke-virtual {v0}, Lcom/zui/gallery/trash/LenovoTrashListFragment;->lambda$clearCache$2$LenovoTrashListFragment()V

    return-void
.end method
