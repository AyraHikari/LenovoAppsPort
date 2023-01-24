.class public final synthetic Lcom/zui/gallery/app/-$$Lambda$PhotoPage$3$cM2325ZKipKqinTqetIijpJyf6I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/app/PhotoPage$3;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/app/PhotoPage$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$3$cM2325ZKipKqinTqetIijpJyf6I;->f$0:Lcom/zui/gallery/app/PhotoPage$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$3$cM2325ZKipKqinTqetIijpJyf6I;->f$0:Lcom/zui/gallery/app/PhotoPage$3;

    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoPage$3;->lambda$onLoadingFinished$1$PhotoPage$3()V

    return-void
.end method
