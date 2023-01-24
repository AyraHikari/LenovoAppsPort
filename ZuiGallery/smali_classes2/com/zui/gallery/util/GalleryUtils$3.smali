.class Lcom/zui/gallery/util/GalleryUtils$3;
.super Ljava/lang/Object;
.source "GalleryUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/util/GalleryUtils;->showImageEditorChooser(Landroid/app/Activity;ILandroid/net/Uri;Lcom/zui/gallery/app/PhotoPage$PhotoEditorCallback;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$photoEditCallback:Lcom/zui/gallery/app/PhotoPage$PhotoEditorCallback;


# direct methods
.method constructor <init>(Lcom/zui/gallery/app/PhotoPage$PhotoEditorCallback;)V
    .locals 0

    .line 1128
    iput-object p1, p0, Lcom/zui/gallery/util/GalleryUtils$3;->val$photoEditCallback:Lcom/zui/gallery/app/PhotoPage$PhotoEditorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1131
    iget-object p1, p0, Lcom/zui/gallery/util/GalleryUtils$3;->val$photoEditCallback:Lcom/zui/gallery/app/PhotoPage$PhotoEditorCallback;

    if-eqz p1, :cond_0

    .line 1132
    invoke-interface {p1}, Lcom/zui/gallery/app/PhotoPage$PhotoEditorCallback;->callback()V

    :cond_0
    return-void
.end method
