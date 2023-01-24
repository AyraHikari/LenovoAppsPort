.class Lcom/zui/gallery/app/MovieActivity$5;
.super Landroid/content/AsyncQueryHandler;
.source "MovieActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MovieActivity;->initializeActionBar(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MovieActivity;Landroid/content/ContentResolver;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/zui/gallery/app/MovieActivity$5;->this$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    if-eqz p3, :cond_1

    .line 382
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 383
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 387
    iget-object p2, p0, Lcom/zui/gallery/app/MovieActivity$5;->this$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-static {p2}, Lcom/zui/gallery/app/MovieActivity;->access$200(Lcom/zui/gallery/app/MovieActivity;)Landroid/widget/TextView;

    move-result-object p2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 391
    invoke-static {p3}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 392
    throw p1

    .line 391
    :cond_1
    :goto_0
    invoke-static {p3}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-void
.end method
