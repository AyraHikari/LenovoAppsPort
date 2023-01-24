.class Lcom/zui/gallery/filtershow/FilterShowActivity$10;
.super Landroid/os/AsyncTask;
.source "FilterShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/FilterShowActivity;->clearGalleryBitmapPool()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 0

    .line 2105
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity$10;->this$0:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2105
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity$10;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2109
    invoke-static {}, Lcom/zui/gallery/util/GalleryBitmapPool;->getInstance()Lcom/zui/gallery/util/GalleryBitmapPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/util/GalleryBitmapPool;->clear()V

    const/4 p1, 0x0

    return-object p1
.end method
