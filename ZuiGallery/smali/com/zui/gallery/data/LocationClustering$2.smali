.class Lcom/zui/gallery/data/LocationClustering$2;
.super Ljava/lang/Object;
.source "LocationClustering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/LocationClustering;->run(Lcom/zui/gallery/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/data/LocationClustering;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/LocationClustering;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/zui/gallery/data/LocationClustering$2;->this$0:Lcom/zui/gallery/data/LocationClustering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/zui/gallery/data/LocationClustering$2;->this$0:Lcom/zui/gallery/data/LocationClustering;

    invoke-static {v0}, Lcom/zui/gallery/data/LocationClustering;->access$100(Lcom/zui/gallery/data/LocationClustering;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001be

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
