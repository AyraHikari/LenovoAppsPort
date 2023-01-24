.class Lcom/zui/gallery/app/MovieActivity$6;
.super Ljava/lang/Object;
.source "MovieActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/MovieActivity;->setRefreshRate()V
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

    .line 469
    iput-object p1, p0, Lcom/zui/gallery/app/MovieActivity$6;->this$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/zui/gallery/app/MovieActivity$6;->this$0:Lcom/zui/gallery/app/MovieActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->setRefreshRate(Landroid/content/Context;)V

    return-void
.end method
