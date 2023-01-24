.class Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener$2;
.super Ljava/lang/Object;
.source "VrPanoramaEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;->onLoadErrorJni(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$errorMessage"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener$2;->this$0:Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener$2;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener$2;->this$0:Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener$2;->val$errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/pano/VrPanoramaEventListener;->onLoadError(Ljava/lang/String;)V

    return-void
.end method
