.class Lcom/zui/gallery/app/GalleryActivity$7;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/app/GalleryActivity;->startViewAction(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/GalleryActivity;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/zui/gallery/app/GalleryActivity$7;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/zui/gallery/app/GalleryActivity$7;->this$0:Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/GalleryActivity;->finish()V

    return-void
.end method
