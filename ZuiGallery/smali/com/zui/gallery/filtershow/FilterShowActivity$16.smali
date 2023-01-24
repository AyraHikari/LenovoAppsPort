.class Lcom/zui/gallery/filtershow/FilterShowActivity$16;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 0

    .line 3277
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$16;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3280
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$16;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3281
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$16;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    .line 3282
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$16;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$800(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->access$3200(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/net/Uri;)V

    .line 3283
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$16;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    return-void
.end method
