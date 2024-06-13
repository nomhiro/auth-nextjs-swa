import FormInput from '@/components/FormInput/FormInput';
import MessageArea from '@/components/MessageArea/MessageArea';

// のむら用
export default async function ExtraPage1() {
  return (
    <main className="flex flex-col text-gray-800 w-full h-full overflow-y-auto">
      <div className="flex bg-slate-300 h-5/6 p-4 justify-center">
        <MessageArea />
      </div>
      <div className="flex h-1/6 p-4 justify-center items-center">
        <FormInput />
      </div>
    </main>
  );
}
