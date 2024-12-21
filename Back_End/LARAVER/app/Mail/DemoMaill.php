<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;
use Illuminate\Mail\Mailables\Address;

class DemoMaill extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     */
    public $data;
    public function __construct($data)
    {
        //
        $this->data= $data ;

    }

    /**
     * Get the message envelope.
     */

     public function envelope(): Envelope
    {
        //thông tin người gửi
        return new Envelope(
            //tiêu đề
            subject: '[petThanDung.com] thư đăng nhập thành công',
            //tên và email hiện thị
            from: new Address('dungthan@gmail.com', 'Dung Than'),
        );
    }

    /**
     * Get the message content definition.
     */
    public function content(): Content
    {
        //view để gửi đi, kèm những biến dũ liệu
        return new Content(
            view: 'mails.demo',
            with:[
                'title'=> 'Gửi email từ thân dũng',
                'content'=>'thông điệp',
                'data' => $this->data
            ]
        );
    }

    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
    //link các phần
    public function attachments(): array
    {
        //các bản file có sẵn trong hệ thống
        return [];
    }
}
