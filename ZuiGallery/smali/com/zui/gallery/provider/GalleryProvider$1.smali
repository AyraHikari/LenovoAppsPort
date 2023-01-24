.class Lcom/zui/gallery/provider/GalleryProvider$1;
.super Landroid/os/AsyncTask;
.source "GalleryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/provider/GalleryProvider;->openPipeHelper(Ljava/lang/Object;Lcom/zui/gallery/provider/GalleryProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$args:Ljava/lang/Object;

.field final synthetic val$func:Lcom/zui/gallery/provider/GalleryProvider$PipeDataWriter;

.field final synthetic val$pipe:[Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>(Lcom/zui/gallery/provider/GalleryProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/zui/gallery/provider/GalleryProvider$1;->val$func:Lcom/zui/gallery/provider/GalleryProvider$PipeDataWriter;

    iput-object p2, p0, Lcom/zui/gallery/provider/GalleryProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/zui/gallery/provider/GalleryProvider$1;->val$args:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 p1, 0x1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/provider/GalleryProvider$1;->val$func:Lcom/zui/gallery/provider/GalleryProvider$PipeDataWriter;

    iget-object v1, p0, Lcom/zui/gallery/provider/GalleryProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/zui/gallery/provider/GalleryProvider$1;->val$args:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/zui/gallery/provider/GalleryProvider$PipeDataWriter;->writeDataToPipe(Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 218
    iget-object v1, p0, Lcom/zui/gallery/provider/GalleryProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    aget-object p1, v1, p1

    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/zui/gallery/provider/GalleryProvider$1;->val$pipe:[Landroid/os/ParcelFileDescriptor;

    aget-object p1, v1, p1

    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 219
    throw v0
.end method
