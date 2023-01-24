.class public final synthetic Lcom/zui/gallery/banner/-$$Lambda$FileListAdapter$xEuT4qVJkLsT5qZjOneZ7G5H3SE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/zui/gallery/banner/FileListAdapter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/gallery/banner/FileListAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/banner/-$$Lambda$FileListAdapter$xEuT4qVJkLsT5qZjOneZ7G5H3SE;->f$0:Lcom/zui/gallery/banner/FileListAdapter;

    iput-object p2, p0, Lcom/zui/gallery/banner/-$$Lambda$FileListAdapter$xEuT4qVJkLsT5qZjOneZ7G5H3SE;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/gallery/banner/-$$Lambda$FileListAdapter$xEuT4qVJkLsT5qZjOneZ7G5H3SE;->f$0:Lcom/zui/gallery/banner/FileListAdapter;

    iget-object v1, p0, Lcom/zui/gallery/banner/-$$Lambda$FileListAdapter$xEuT4qVJkLsT5qZjOneZ7G5H3SE;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/banner/FileListAdapter;->lambda$onBindViewHolder$0$FileListAdapter(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
