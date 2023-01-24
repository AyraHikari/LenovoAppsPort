.class public final synthetic Lcom/zui/gallery/banner/-$$Lambda$FileListDetailsActivity$1$jCOh-a92dfoMiQxPJJW2ZchWM3Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/banner/FileListDetailsActivity$1;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/banner/FileListDetailsActivity$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/banner/-$$Lambda$FileListDetailsActivity$1$jCOh-a92dfoMiQxPJJW2ZchWM3Y;->f$0:Lcom/zui/gallery/banner/FileListDetailsActivity$1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/gallery/banner/-$$Lambda$FileListDetailsActivity$1$jCOh-a92dfoMiQxPJJW2ZchWM3Y;->f$0:Lcom/zui/gallery/banner/FileListDetailsActivity$1;

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/banner/FileListDetailsActivity$1;->lambda$run$0$FileListDetailsActivity$1(Ljava/io/File;Ljava/lang/Boolean;)V

    return-void
.end method
