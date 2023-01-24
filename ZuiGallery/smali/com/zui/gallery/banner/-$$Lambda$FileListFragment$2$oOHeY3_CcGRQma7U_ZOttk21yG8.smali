.class public final synthetic Lcom/zui/gallery/banner/-$$Lambda$FileListFragment$2$oOHeY3_CcGRQma7U_ZOttk21yG8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/banner/FileListFragment$2;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/banner/FileListFragment$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/banner/-$$Lambda$FileListFragment$2$oOHeY3_CcGRQma7U_ZOttk21yG8;->f$0:Lcom/zui/gallery/banner/FileListFragment$2;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/gallery/banner/-$$Lambda$FileListFragment$2$oOHeY3_CcGRQma7U_ZOttk21yG8;->f$0:Lcom/zui/gallery/banner/FileListFragment$2;

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/banner/FileListFragment$2;->lambda$run$0$FileListFragment$2(Ljava/io/File;Ljava/lang/Boolean;)V

    return-void
.end method
