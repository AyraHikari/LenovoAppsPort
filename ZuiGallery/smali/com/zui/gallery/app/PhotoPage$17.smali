.class Lcom/zui/gallery/app/PhotoPage$17;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/PhotoPage;->createConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 4297
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$17;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4298
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$17;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$2300(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/SelectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/PhotoPage$17;->count:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 4314
    :cond_0
    iget p2, p0, Lcom/zui/gallery/app/PhotoPage$17;->count:I

    if-lez p2, :cond_2

    .line 4315
    new-instance p2, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage$17;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p2, v2, p1}, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;-><init>(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/app/PhotoPage$1;)V

    new-array p1, v1, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 4305
    :cond_1
    iget p2, p0, Lcom/zui/gallery/app/PhotoPage$17;->count:I

    if-lez p2, :cond_2

    .line 4306
    new-instance p2, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage$17;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p2, v2, p1}, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;-><init>(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/app/PhotoPage$1;)V

    new-array p1, v1, [Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p2, p1}, Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method
