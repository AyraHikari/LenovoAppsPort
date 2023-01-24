.class public final synthetic Lcom/zui/gallery/app/-$$Lambda$NormalVideoTrimActivity$7ed5jUyqZVMIzKDcNjZ4HJB89-0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/gallery/util/FutureListener;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/app/NormalVideoTrimActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/app/-$$Lambda$NormalVideoTrimActivity$7ed5jUyqZVMIzKDcNjZ4HJB89-0;->f$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    return-void
.end method


# virtual methods
.method public final onFutureDone(Lcom/zui/gallery/util/Future;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/gallery/app/-$$Lambda$NormalVideoTrimActivity$7ed5jUyqZVMIzKDcNjZ4HJB89-0;->f$0:Lcom/zui/gallery/app/NormalVideoTrimActivity;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/NormalVideoTrimActivity;->lambda$parseNvsVideoThumbnail$2$NormalVideoTrimActivity(Lcom/zui/gallery/util/Future;)V

    return-void
.end method
