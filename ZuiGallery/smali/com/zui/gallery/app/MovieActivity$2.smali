.class Lcom/zui/gallery/app/MovieActivity$2;
.super Ljava/lang/Object;
.source "MovieActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MovieActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/MovieActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/MovieActivity;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/zui/gallery/app/MovieActivity$2;->this$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 173
    iget-object p1, p0, Lcom/zui/gallery/app/MovieActivity$2;->this$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/MovieActivity;->close()V

    return-void
.end method
